#SURNAME:MONOCHOLIAS
#NAME:IOANNIS
#REGISTRY NUMBER:3230128
		.text
		.globl __start
		
__start:		
       li $v0,4#Input prompt
	   la $a0,s3
	   syscall
	   
	   li $v0,5#readInt
	   syscall
	   sw $v0,inNum
   
	   lw $t0,inNum#validation check
	   bltz $t0,exit
	   bgt $t0,9999,exit
			
	   li $v0,4#message of successful input
	   la $a0,s1
	   syscall
	   
	   li $v0,1#printInt
	   lw $a0,inNum
	   syscall
	   
	   li $t5,10#the least significant digit
	   rem $t4,$t0,$t5
	   div $t0,$t0,$t5#keep the 3 most significant digits
	   rem $t3,$t0,$t5#the second least significant digit
	   div $t0,$t0,$t5#keep the 2 most significant digits
	   rem $t2,$t0,$t5#the third least significant
	   div $t0,$t0,$t5#keep the most significant digit
	   move $t1,$t0#the most significant digit
	   
	   #digits encryption
	   addi $t4,$t4,7
	   rem $t4,$t4,$t5
	   
	   addi $t3,$t3,7
	   rem $t3,$t3,$t5
	   
	   addi $t2,$t2,7
	   rem $t2,$t2,$t5
	   
	   addi $t1,$t1,7
	   rem $t1,$t1,$t5
	   
	   #encrypted digits exchange
	   #exchange the values of the first and the third digit
	   move $t6,$t4#t6 = t4
	   move $t4,$t2#t4 = t2
	   move $t2,$t6#t2 = t6
	   
	   #exchange the values of the second and the fourth digit
	   move $t6,$t3#t6 = t3
	   move $t3,$t1#t3 = t1
	   move $t1,$t6#t1 = t6
	   
	   li $t6,0
	   move $t6,$t4 
	   mul $t3,$t3,$t5#t3 = t3 * 10^1(t5 = 10 from previous initialization)
	   add $t6,$t6,$t3#t6 = t6 + t3 * 10^1
	   li $t5,100
	   mul $t2,$t2,$t5#t2 = t2 * 10^2
	   add $t6,$t6,$t2#t6 = t6 + t2 * 10^2
	   li $t5,1000
	   mul $t1,$t1,$t5#t1 = t1 * 10^3
	   add $t6,$t6,$t1#t6 = t6 + t3 * 10^3
	   
	   sw $t6,encryptedNum#store the encrypted number on encryptedNum variable 
	   
	   li $v0,4#display of the encrypted number
	   la $a0,s2
	   syscall
	   
	   li $v0,1#printInt
	   lw $a0,encryptedNum
	   syscall
	   
	   li $t0,0
	   li $t1,0
	   li $t2,0
	   li $t3,0
	   li $t4,0
	   li $t5,0
	   li $t6,0
	   #registers reinitialization
	   
	   lw $t0,encryptedNum
	   
	   li $t5,10#the least significant digit
	   rem $t4,$t0,$t5
	   div $t0,$t0,$t5#keep the 3 most significant digits
	   rem $t3,$t0,$t5#the second least significant digit
	   div $t0,$t0,$t5#keep the 2 most significant digits
	   rem $t2,$t0,$t5#the third least significant
	   div $t0,$t0,$t5#keep the most significant digit
	   move $t1,$t0#the most significant digit
	   
	   #digits decryption
	   bge $t4,7,t4Decr 
	   addi $t4,$t4,3
	   j t3
t4Decr:
	   addi $t4,$t4,-7
	   
	t3:
	   bge $t3,7,t3Decr
	   addi $t3,$t3,3
	   j t2
t3Decr:
	   addi $t3,$t3,-7
	  
	t2:
	   bge $t2,7,t2Decr
	   addi $t2,$t2,3
	   j t1
t2Decr:
	   addi $t2,$t2,-7
	   
	 t1:
		bge $t1,7,t1Decr
		addi $t1,$t1,3
		j digitsExchange
t1Decr:
	   addi $t1,$t1,-7

digitsExchange:
	   
	   #decrypted digits exchange
	   #exchange the values of the first and the third digit
	   move $t6,$t4#t6 = t4
	   move $t4,$t2#t4 = t2
	   move $t2,$t6#t2 = t6
	   
	   #exchange the values of the second and the fourth digit
	   move $t6,$t3#t6 = t3
	   move $t3,$t1#t3 = t1
	   move $t1,$t6#t1 = t6
	   
	   li $t6,0
	   move $t6,$t4 
	   mul $t3,$t3,$t5#t3 = t3 * 10^1(t5 = 10 from previous initialization)
	   add $t6,$t6,$t3#t6 = t6 + t3 * 10^1
	   li $t5,100
	   mul $t2,$t2,$t5#t2 = t2 * 10^2
	   add $t6,$t6,$t2#t6 = t6 + t2 * 10^2
	   li $t5,1000
	   mul $t1,$t1,$t5#t1 = t1 * 10^3
	   add $t6,$t6,$t1#t6 = t6 + t3 * 10^3
		
	   sw $t6,decryptedNum#store the decrypted number on decryptedNum variable
	   
	   li $v0,4#display of the decrypted number
	   la $a0,s4
	   syscall
	   
	   li $v0,1#printInt
	   lw $a0,decryptedNum
	   syscall
	   
   exit:li $v0,10
				syscall
		
				.data
inNum:  .space 4
s1:     .asciiz "\nThe number before encryption is: "
s2:				.asciiz "\nThe encrypted number is: "
s3:     .asciiz "Give a Number(0-9999): "
s4:     .asciiz "\nThe decrypted number is: "
decryptedNum: .word 0
encryptedNum: .word 0