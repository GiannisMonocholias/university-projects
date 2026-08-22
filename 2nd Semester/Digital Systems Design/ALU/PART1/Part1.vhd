library ieee;
use ieee.std_logic_1164.all;
--Οντότητα πράξης AND
ENTITY myand2 IS 
	PORT(in1,in2:   IN std_logic;
		output_and2: OUT std_logic);
END myand2;

ARCHITECTURE func1 OF myand2 IS
BEGIN	
	output_and2<= in1 AND in2;
END func1;

library ieee;
use ieee.std_logic_1164.all;
--Οντότητα πράξης OR
ENTITY myor2 IS 
	PORT(in1,in2:    IN std_logic;
		  output_or2: OUT std_logic);
END myor2;

ARCHITECTURE func2 OF myor2 IS 
BEGIN	
	output_or2 <= in1 or in2;
END func2;

library ieee;
use ieee.std_logic_1164.all;
--Οντότητα fulladder
ENTITY fulladder IS 
	PORT(CarryIn,a,b:IN std_logic;
		  CarryOut,sum:         OUT std_logic);
END fulladder;

ARCHITECTURE func3 OF fulladder IS 
BEGIN
	CarryOut <= (a AND b) OR (a and CarryIn) OR ( b AND CarryIn);--Υπολογισμός κρατουμένου εξόδου
	sum <= (a AND (NOT b) AND (NOT CarryIn)) OR ((NOT a) AND b AND (NOT CarryIn)) OR ((NOT a) AND (NOT b) AND CarryIn) OR (a AND b AND Carryin);--Υπολογισμός αθροίσματος
END func3;

library ieee;
use ieee.std_logic_1164.all;
--Οντότητα πολυπλέκτη 2-σε-1 
ENTITY mymux2_1 IS 
	PORT(a,b,s:IN std_logic;
		  output_mux2_1:OUT std_logic);
END mymux2_1;

ARCHITECTURE func4 OF mymux2_1 IS 
BEGIN
	PROCESS(a,b,s)
	BEGIN
	CASE s iS
		WHEN '0' =>  output_mux2_1 <= a;
		WHEN OTHERS => output_mux2_1 <= b;
	END CASE;
	END PROCESS;
END func4;


library ieee;
use ieee.std_logic_1164.all;
--Οντότητα πολυπλέκτη 4-σε-1
ENTITY mymux4_1 IS
	PORT(a,b,c,d:IN std_logic;
		  s:      IN std_logic_vector(1 DOWNTO 0);
		  output_mux4_1:OUT std_logic);
END mymux4_1;

ARCHITECTURE func5 OF mymux4_1 IS 
BEGIN
	PROCESS(a,b,c,d,s)
	BEGIN	
	CASE s IS
		WHEN "00" => output_mux4_1 <=a;
		WHEN "01" => output_mux4_1 <=b;
		WHEN "10" => output_mux4_1 <=c;
		WHEN OTHERS => output_mux4_1 <=d;
	END CASE;
	END PROCESS;	
END func5;		

	
library ieee;
use ieee.std_logic_1164.all;
--Οντότητα πράξης XOR
ENTITY myxor2 IS
	PORT(a,b: IN std_logic;
			output_xor2:OUT std_logic);
END myxor2;

ARCHITECTURE func6 OF myxor2 IS 
BEGIN	
	output_xor2 <= ((NOT a) AND b) OR (a AND (NOT b));
END func6; 
--Δημιουργία pakage με όλα τα components που χρειάζονται για την 1-bit alu
LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

PACKAGE alu_1_bit IS
	COMPONENT Part1 IS 
		PORT(operation: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			  CarryIn,a,b,Ainvert,Binvert:IN std_logic;
			  result,CarryOut:OUT std_logic);
	END COMPONENT;

	COMPONENT myand2 IS 
		PORT(in1,in2:   IN std_logic;
			output_and2: OUT std_logic);
	END COMPONENT;

	COMPONENT myor2 IS 
		PORT(in1,in2:  IN std_logic;
			  output_or2: OUT std_logic);
	END COMPONENT;

	COMPONENT fulladder IS 
		PORT(CarryIn,a,b:IN std_logic;
			  CarryOut,sum:         OUT std_logic);
	END COMPONENT;

	COMPONENT mymux2_1 IS 
		PORT(a,b,s:IN std_logic;
			  output_mux2_1:OUT std_logic);
	END COMPONENT;

	COMPONENT mymux4_1 IS
		PORT(a,b,c,d:IN std_logic;
			  s:      IN std_logic_vector(1 DOWNTO 0);
			  output_mux4_1:OUT std_logic);
	END COMPONENT;

	COMPONENT myxor2 IS
		PORT(a,b: IN std_logic;
				output_xor2:OUT std_logic);
	END COMPONENT;
END alu_1_bit;

library ieee;
use ieee.std_logic_1164.all;
use work.alu_1_bit.all;

ENTITY Part1 IS 
	PORT(operation: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  CarryIn,a,b,Ainvert,Binvert:IN std_logic;
		  result,CarryOut:OUT std_logic);			
END Part1;

ARCHITECTURE struct OF Part1 IS 
--Δεν δηλώνονται τα components που χρησιμοποιούνται,διότι χρησιμοποιούνται μέσω του package alu_1_bit 

Signal output1,output2,output3,output4:STD_LOGIC ;
Signal aform,bform:STD_LOGIC;
BEGIN 
I0: mymux2_1 PORT MAP(a,not a,Ainvert,aform);--Επιλογή κανονικής ή συμπληρωματικής μορφής του a
I1: mymux2_1 PORT MAP(b,not b,Binvert,bform);--Επιλογή κανονικής ή συμπληρωματικής μορφής του b
I2: myand2 PORT MAP (aform,bform,output1);--Πράξη AND μεταξύ των σημάτων εισόδου a και b
I3: myor2 PORT MAP (aform,bform,output2);--Πράξη OR μεταξύ των σημάτων εισόδου a και b
I4: fulladder PORT MAP (CarryIn,aform,bform,CarryOut,output3);--Πρόσθεση των σημάτων εισόδου a και b
I5: myxor2 PORT MAP (aform,bform,output4);--Πράξη XOR μεταξύ των σημάτων εισόδου a και b
I6: mymux4_1 PORT MAP (output1,output2,output3,output4,operation,result);--Επιλογή μιας εκ των τεσσάρων πράξεων(AND,OR,ADD,XOR),για να εφαρμοστεί στα σήματα εισόδου a και b


END struct;	






