library ieee;
use ieee.std_logic_1164.all;

ENTITY Problem2_question2 IS 
	PORT (x1,x2,x3,x4: IN STD_LOGIC;
				f		  : OUT STD_LOGIC );
END Problem2_question2;

ARCHITECTURE Behavioral OF Problem2_question2 IS 
BEGIN
f <= (x1 OR x3 OR x4)AND(x1 OR (NOT x3) OR (NOT x4))AND((NOT x1) OR x3 OR (NOT x4))AND((NOT x1) OR x2 OR (NOT x3) OR x4);
END Behavioral;