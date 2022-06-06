
#################################################################################################################
#																		
# Created by:	Rohret, Isaac 											
#		1910098												
#		12 May, 2022											
#														
# Assignment: 	Lab 3: Looping in RISC-V Assembly 										
#		CSE 12, Computer Systems and Assembly Language							
# 		UC Santa Cruz, Spring 2022									
#														
# Description: This program will print out a pattern with numbers and stars (asterisks) and dollar signs ($).	
#																							
# Notes: This program is intended to be run from the RISC V IDE.						
#														
#################################################################################################################


#
# store the value of i, j, row as ints
#
# 	ask the user for the input, and stor that value in row
#	check if the row value is greate or equal to 0
#	iff the value is postive does it go to the next loop
# 	//loop through each row
#	check if i is less than the row, if it is then if print the $
#	imcrement i+1
#	geate a count valuable to keep track of how many elemet are in the line
#	check if j is less than the row, if it is then print *$
#	increment J + 1
#	incremtn count +2
#	print newline for each row



.data
	prompt:  .asciz 	"Enter the height of the pattern (must be greater than 0):"
	newline: .asciz 	"\n"
	nope: .asciz 		"Invalid entry!!" 
	star: .asciz 		"*$"
	pop: .asciz 		"$"
	count: .asciz 		"1"

.text

main: 
	li t0, 0 		# i = 0
	li t1, 0 		# j = 0
	li t2, 1 		# count
	li t3, 0 		# row = 0

while: 
	li a7, 4		# print prompt
	la a0, prompt
	ecall 
	
	li a7, 5		#take user input
	ecall 
	
	addi t3, a0, 0 		# move input value into t3
		
	blez t3, _False		# checks if the value is >= the row
	bgez t3, _outer
	
	li t0, 0
	
_False:				# iff input is negative 
	li a7, 4
	la a0, nope
	ecall
	 
	la a0, newline 	# prints a new line 
	ecall
	
	j while

#### End of while loop

_outer:
	beq t0, t3, _exit 	# for i = 0; i <= row; i++
	
	addi t0, t0, 1 		# incremet i
	li t1, 2 		# j = 2
	
	li a7, 4
	la a0, pop		# print $
	ecall	
	
_inner:
	bgt t1, t0, _newline 	# for j = 0; j <= i j++
	
	li a7, 4
	la a0, star		# print star
	ecall	

	addi t1, t1, 1 		# increment j 
	j _inner
		
_newline:
	li a7, 1  		# print count
	addi a0, t2, 0		# move count to a0 
 
	addi t2, t2, 2 		# cout += 2
	ecall
	
	li a7, 4
	la a0, newline		# print newline 
	ecall 
	
	j _outer
				
_exit:
	li a7, 10
	ecall



	
