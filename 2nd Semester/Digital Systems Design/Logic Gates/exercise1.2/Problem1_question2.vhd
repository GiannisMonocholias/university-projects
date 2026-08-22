library ieee;
use ieee.std_logic_1164.all;

ENTITY or_4 IS
PORT (in1,in2,in3,in4 : IN STD_LOGIC;
		output_or_4 : OUT STD_LOGIC   );
END or_4;

ARCHITECTURE model_or_4 OF or_4 IS 
BEGIN 
	 output_or_4 <= in1 OR in2 OR in3 OR in4;
END model_or_4;


library ieee;
use ieee.std_logic_1164.all;

ENTITY and_2 IS
PORT (in1,in2 : IN STD_LOGIC;
		output_and_2 : OUT STD_LOGIC);
END and_2;

ARCHITECTURE model_and_2 OF and_2 IS 
BEGIN
    output_and_2 <= in1 AND in2;
END model_and_2;


library ieee;
use ieee.std_logic_1164.all;

ENTITY and_3 IS 
PORT (in1,in2,in3 : IN STD_LOGIC;
		output_and_3 : OUT STD_LOGIC);
END and_3;

ARCHITECTURE model_and_3 OF and_3 IS 
BEGIN 
	 output_and_3 <= in1 AND in2 AND in3;
END model_and_3;


library ieee;
use ieee.std_logic_1164.all;

ENTITY and_4 IS 
PORT (in1,in2,in3,in4 : IN STD_LOGIC;
		output_and_4 : OUT STD_LOGIC   );
END and_4;

ARCHITECTURE model_and_4 OF and_4 IS
BEGIN
	output_and_4 <= in1 AND in2 AND in3 AND in4;
END model_and_4;


library ieee;
use ieee.std_logic_1164.all;

ENTITY Problem1_question2 IS 
PORT (x1,x2,x3,x4,x5 : IN STD_LOGIC;
		f : OUT STD_LOGIC);
END Problem1_question2;	

ARCHITECTURE final_function OF Problem1_question2 IS
COMPONENT or_4
PORT (in1,in2,in3,in4: IN STD_LOGIC;
		output_or_4 : OUT STD_LOGIC);
END COMPONENT;

COMPONENT and_2
PORT (in1,in2 : IN STD_LOGIC;
		output_and_2 : OUT STD_LOGIC);
END COMPONENT;

COMPONENT and_3
PORT (in1,in2,in3 : IN STD_LOGIC;
		output_and_3 : OUT STD_LOGIC);
END COMPONENT;

COMPONENT and_4 
PORT (in1,in2,in3,in4 : IN STD_LOGIC;
		output_and_4 : OUT STD_LOGIC);		
END COMPONENT;

SIGNAL product1,product2,product3,product4: STD_LOGIC;

BEGIN
	Term1 : and_2 PORT MAP (not x3, not x5,product1);
	Term2 : and_2 PORT MAP (not x4, not x5,product2);
	Term3 : and_3 PORT MAP (x1,x2,not x3,product3);
	Term4 : and_4 PORT MAP (not x2,x3,x4,x5,product4);
	Final_output : or_4 PORT MAP (product1,product2,product3,product4,f);
END final_function;
