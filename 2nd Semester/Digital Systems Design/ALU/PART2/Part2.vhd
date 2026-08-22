library ieee;
use ieee.std_logic_1164.all;

--Οντότητα κυκλώματος ελέγχου της 16-bit alu
ENTITY control_circuit IS 
	PORT(opcode:IN std_logic_vector(2 downto 0);
			operation:OUT std_logic_vector(1 downto 0);
			Ainvert,Binvert,CarryIn:OUT std_logic);
END control_circuit;


ARCHITECTURE control OF  control_circuit IS
BEGIN
PROCESS(opcode)
BEGIN
	--Απόδοση κατάλληλων τιμών στα σήματα operation,Ainvert,Binvert,CarryIn , ανάλογα με την τιμή του σήματος opcode
	IF opcode = "000" THEN
		operation <= "00";
		Ainvert <= '0';
		Binvert <= '0';
		CarryIn <= '0';
	ELSIF opcode = "001" THEN
		operation <= "01";
		Ainvert <= '0';
		Binvert <= '0';
		CarryIn <= '0';
	ELSIF opcode = "010"  THEN
		operation <= "10";
		Ainvert <= '0';
		Binvert <= '0';
		CarryIn <= '0';
	ELSIF opcode = "011" THEN
		operation <= "10";
		Ainvert <= '0';
		Binvert <= '1';
		CarryIn <= '1';
	ELSIF opcode = "100" THEN 
		operation <= "00";
		Ainvert <= '1';
		Binvert <= '1';
		CarryIn <= '0';
	ELSIF opcode = "101" THEN 
		operation <= "01";
		Ainvert <= '1';
		Binvert <= '1';
		CarryIn <= '0';
	ELSIF opcode ="110" THEN
		operation <= "11";
		Ainvert <= '0';
		Binvert <= '0';
		CarryIn <= '0';
	END IF;	

   END PROCESS;
END control;



library ieee;
use ieee.std_logic_1164.all;
use work.alu_1_bit.all;--Χρήση του package alu_1_bit για να έχουμε πρόσβαση στην 1-bit alu

ENTITY Part2 IS 
	PORT(a,b:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  opcode:IN STD_LOGIC_VECTOR(2 downto 0) ;
		  s:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		  Overflow: OUT STD_LOGIC);
END Part2;



ARCHITECTURE struct OF Part2 IS 
COMPONENT control_circuit IS
	PORT(opcode:IN std_logic_vector(2 downto 0);
			operation:OUT std_logic_vector(1 downto 0);
			Ainvert,Binvert,CarryIn:OUT std_logic);
END COMPONENT;
--Δεν δηλώνονται τα components που χρησιμοποιούνται,διότι χρησιμοποιούνται μέσω του package alu_1_bit
--Δηλώνεται μόνο το control_circuit που δεν περιλαμβάνεται στο package alu_1_bit
SIGNAL c:STD_LOGIC_VECTOR(0 TO 15);
SIGNAL Ainvert,Binvert,CarryIn:STD_LOGIC;
SIGNAL operation:STD_LOGIC_VECTOR(1 downto 0);

BEGIN
	U0: control_circuit PORT MAP(opcode,operation,Ainvert,Binvert,CarryIn);
	U1: Part1 PORT MAP(operation,CarryIn,a(0),b(0),Ainvert,Binvert,s(0),c(0));
	GEN: FOR i IN 1 TO 15 GENERATE
		U2: Part1 PORT MAP(operation,c(i-1),a(i),b(i),Ainvert,Binvert,s(i),c(i));
	END GENERATE;
	PROCESS(opcode)
	BEGIN
		IF NOT (opcode = "010" OR opcode = "011") THEN
			Overflow <= '0';--Για λογικές πράξεις
		ELSE
			Overflow <= c(14) XOR c(15); --Για αριθμητικές πράξεις
		END IF;		
	END PROCESS;
END struct;