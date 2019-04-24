	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	
	entity uygulama11 is
		  Port (		LEDR	   : out  STD_LOGIC_vector(17 downto 0):= b"000000000000000000";
						SW		: in std_logic_vector(1 downto 0);
						CLOCK_50 : in std_logic);
	end uygulama11;
	
	
	
	architecture Behavioral of uygulama11 is
	
	constant one 			: std_logic_vector(31 downto 0) := x"3f800000"; -- "1"
	
	signal x1			   : std_logic_vector(31 downto 0) := x"3dcccccd"; --0.1
	signal t1			   : std_logic_vector(31 downto 0) := x"3dcccccd"; --0.1
	signal xt1			   : std_logic_vector(31 downto 0) := x"00000000"; --
	
	signal x2			   : std_logic_vector(31 downto 0) := x"3dcccccd"; --0.1
	signal t2			   : std_logic_vector(31 downto 0) := x"3dcccccd"; --0.1
	signal xt2			   : std_logic_vector(31 downto 0) := x"00000000"; --
	
	signal x3    			: std_logic_vector(31 downto 0) := x"3dcccccd"; --0.1
	signal t3     			: std_logic_vector(31 downto 0) := x"3dcccccd"; --0.1
	signal xt3    			: std_logic_vector(31 downto 0) := x"00000000"; --
	
	signal bias   			: std_logic_vector(31 downto 0) := x"3dcccccd";	--0.1
	
	signal xt1_xt2   		: std_logic_vector(31 downto 0) := x"00000000";
	signal xt1_xt2_xt3   : std_logic_vector(31 downto 0) := x"00000000";
	signal z				   : std_logic_vector(31 downto 0) := x"00000000";
	signal invz			   : std_logic_vector(31 downto 0) := x"00000000";
	signal expz			   : std_logic_vector(31 downto 0) := x"00000000";
	signal expinvz			   : std_logic_vector(31 downto 0) := x"00000000";
	
	
	
	signal sigmoid_function   		 : std_logic_vector(31 downto 0) := x"00000000";
	signal sigmoid_function1  		 : std_logic_vector(31 downto 0) := x"00000000";
	
	signal hyperbolic_tangent   	 : std_logic_vector(31 downto 0) := x"00000000";
	signal hyperbolic_tangent1   	 : std_logic_vector(31 downto 0) := x"00000000";
	signal hyperbolic_tangent2  	 : std_logic_vector(31 downto 0) := x"00000000";
	
	signal rectified_lineer_unit   : std_logic_vector(31 downto 0) := x"00000000";
	
	signal ms_18bit : std_logic_vector(31 downto 0) := x"00000000";
	
	
	
	COMPONENT f_p_add
			PORT(    clock	:	IN  STD_LOGIC;
						dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );
	END COMPONENT;
	
	
						
	COMPONENT f_p_sub
			PORT(    clock	:	IN  STD_LOGIC;
						dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );
	END COMPONENT;
						
	
	
	COMPONENT f_p_mult
			PORT(    clock	:	IN  STD_LOGIC;
						dataa	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						datab	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );						
	END COMPONENT;


	COMPONENT f_p_div
			PORT(    clock		:	IN  STD_LOGIC;
						dataa		:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						datab		:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result			:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );						
	END COMPONENT;
	
	
	COMPONENT f_p_exp
			PORT(    clock	:	IN  STD_LOGIC;
						data	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );
	END COMPONENT;
	
	
	COMPONENT f_p_inv
			PORT(    clock	:	IN  STD_LOGIC;
						data	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
						result:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0) );
	END COMPONENT;
	
	
	begin
	
	U: f_p_mult PORT MAP(  clock =>CLOCK_50 , dataa => x1 , datab => t1 , result => xt1 );
	V: f_p_mult PORT MAP(  clock =>CLOCK_50 , dataa => x2 , datab => t2 , result => xt2 );
	W: f_p_mult PORT MAP(  clock =>CLOCK_50 , dataa => x3 , datab => t3 , result => xt3 );
	
	A: f_p_add PORT MAP(  clock =>CLOCK_50 , dataa => xt1 , datab => xt2 , result => xt1_xt2 );
	B: f_p_add PORT MAP(  clock =>CLOCK_50 , dataa => xt1_xt2 , datab => xt3 , result => xt1_xt2_xt3 );

	C: f_p_add PORT MAP(  clock =>CLOCK_50 , dataa => xt1_xt2_xt3 , datab => bias , result => z );
	
	--D: f_p_inv PORT MAP(  clock =>CLOCK_50 , data => z , result => invz	);
	   
		
	
	E: f_p_exp PORT MAP(  clock =>CLOCK_50 , data =>z , result => expz );
	F: f_p_exp PORT MAP(  clock =>CLOCK_50 , data =>invz , result => expinvz );
	
	-----------------------------------------------------------------------------------SIGMOD_FUNCTION------------------------------------------------------------------------------------------
	G: f_p_add PORT MAP(  clock =>CLOCK_50 , dataa => one , datab => expinvz , result => sigmoid_function1 );
	H: f_p_div PORT MAP(  clock =>CLOCK_50 , dataa => one , datab => sigmoid_function1 , result => sigmoid_function );
	--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	-----------------------------------------------------------------------------------HYPERBOLIC_TANGENT---------------------------------------------------------------------------------------	
	I: f_p_sub PORT MAP(  clock =>CLOCK_50 , dataa => expz , datab => expinvz , result => hyperbolic_tangent1 );
	J: f_p_add PORT MAP(  clock =>CLOCK_50 , dataa => expz , datab => expinvz , result => hyperbolic_tangent2 );
	K: f_p_div PORT MAP(  clock =>CLOCK_50 , dataa => hyperbolic_tangent1 , datab => hyperbolic_tangent2 , result => hyperbolic_tangent );
	--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	------------------------------------------------------------------------------------- RECTIFIED_LINEER_UNIT---------------------------------------------------------------------------------
	
	--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
--	sigmoid_function <= one/(one + expinvz)
--	hyperbolic_tangent<= (expz-expinvz)/(expz+expinvz)
--	rectified_lineer_unit<=max(0,z)

	process(SW,CLOCK_50)
	begin
	
	invz <= z;
	invz(31 downto 31) <= not z(31 downto 31);
	
	if (SW(0) = '0' and SW(1) = '0') then
		LEDR <= sigmoid_function(31 downto 14);
		
	elsif (SW(0) = '1' and SW(1) = '0') then
		LEDR <= hyperbolic_tangent(31 downto 14);
		
	elsif (SW(0) = '1' and SW(1) = '1') then
		LEDR <= z(31 downto 14);
	
	end if;
	end process;
end Behavioral;