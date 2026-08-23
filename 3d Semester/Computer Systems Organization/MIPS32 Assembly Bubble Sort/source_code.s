#SURNAME: MONOCHOLIAS
#NAME: IOANNIS
#REGISTRY NUMBER:3230128

		.text
		
		la $a0,array#The argument for all 4 calls
		jal readArray
		jal displayArray
		jal sortArray
		jal displayArray
		
		
		
		
		
exit:
		li $v0,10
		syscall
		
readArray:
		addi $sp,$sp,-4
		sw $a0,($sp)#save $a0
		
		move $t1,$a0#base address
		
		la $a0,inputPrompt#print(inputPrompt)
		li $v0,4
		syscall
		
		la $a0,newLine#print("\n")
		li $v0,4
		syscall
		
		
		li $t0,0#elements counter
loopRead:	bgt $t0,4,endReadArray
			la $a0,ArrayElement1#print("Array[")
			li $v0,4
			syscall
			
			move $a0,$t0#print($t0)
			li $v0,1
			syscall
			
			la $a0,ArrayElement2#print("] = ")
			li $v0,4
			syscall
			
			li $v0,5#readInt()
			syscall
			
			sw $v0,($t1)#Store the read integer in the current position of the array
			addi $t1,$t1,4#update address
			addi $t0,$t0,1#update elements counter
			
			j loopRead
		
endReadArray:
			lw $a0,($sp)#set $a0 to its initial value,so it is passed as an argument to the subsequent subprograms
			addi $sp,$sp,4
			jr $ra
		
displayArray:
	 move $t1,$a0#base address
	 
	 addi $sp,$sp,-4
	 sw $a0,($sp)#save $a0
	 
	 la $a0,display_msg1#print("Array of integers:")
	 li	$v0,4
	 syscall
	 
	 
	 li $t0,0#elements counter

loopDisplay:
			bgt $t0,4,endDisplayArray
				lw $a0,($t1)#print the current element
				li $v0,1
				syscall
				
				la $a0,space_char#print(" ")
				li $v0,4
				syscall
				
				addi $t1,$t1,4#update address
				addi $t0,$t0,1#update elements counter
				
				j loopDisplay
			
			
			
			
endDisplayArray:
			lw $a0,($sp)#set $a0 to its initial value,so it is passed as an argument to the subsequent subprograms
			addi $sp,$sp,4
			jr $ra
	 
sortArray:
		addi $sp,$sp,-4
		sw $a0,($sp)#save $a0
		
		la $a0,sort_msg1#print(""\nSorting array ..."")
		li $v0,4
		syscall
		
		move $t1,$zero#Outer Loop counter initialization(i = 0)
		li $t0,5#n=5
		addi $t0,$t0,-1#n = n - 1
		
OuterLoop:bge $t1,$t0,endOuterLoop
			move $t2,$zero#Inner Loop counter initialization(j = 0)
			move $t3,$t0
			sub $t3,$t3,$t1#$t3 = $t0 - $t1 (n - i - 1)
InnerLoop:	bge $t2,$t3,endInnerLoop
				lw $a0,($sp)#$a0 = base register
				move $a1,$t2#$a1 = j
				addi $sp,$sp,-4
				sw $ra,($sp)#current return address save
				jal swap#swap subprogram call
				lw $ra,($sp)
				addi $sp,$sp,4
				
				addi $t2,$t2,1#j++
				j InnerLoop
endInnerLoop:
			addi $t1,$t1,1#i++
			j  OuterLoop
endOuterLoop:
			la $a0,newLine#print("\n")
			li $v0,4
			syscall
			
			lw $a0,($sp)
			addi $sp,$sp,4
		
			jr $ra
			
			
			
swap:
		addi $sp,$sp,-4
		sw $a1,($sp)#save $a1
		
		li $t6,4
		mul $a1,$a1,$t6#j = j*4
		add $t7,$a0,$a1#$t7 = base address + j*4
		move $t6,$t7#$t6 = $t7
		addi $t9,$t7,4#t9 = j + 1
		lw $t7,($t7)#t7 = array[j]
		lw $t9,($t9)#t9 = array[j+1]
		
		
		ble $t7,$t9,endSwap
			sw $t7,temp# temp = array[j]
			sw $t9,($t6)#array[j] = array[j+1]
			lw $t9,temp
			sw $t9,4($t6)#array [j+1] = temp
		
endSwap:
		lw $a1,($sp)#set $a1 to its initial value,so it is passed as an argument to the subsequent subprograms
		addi $sp,$sp,4
		jr $ra
		
		
		.data
array:  .space 20
inputPrompt: .asciiz"Enter 5 integers:"
ArrayElement1: .asciiz"Array["
ArrayElement2: .asciiz"] = "
newLine: .asciiz"\n"
display_msg1: .asciiz"Array of integers:"
space_char: .asciiz" "
sort_msg1: .asciiz"\nSorting array ..."
temp: .space 4