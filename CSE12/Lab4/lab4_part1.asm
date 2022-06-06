
#Note that this file only contains a function xyCoordinatesToAddress
#As such, this function should work independent of any caller funmction which calls it
#When using regisetrs, you HAVE to make sure they follow the register usage convention in RISC-V as discussed in lectures.
#Else, your function can potentially fail when used by the autograder and in such a context, you will receive a 0 score for this part

xyCoordinatesToAddress:
	#(x,y) in (a0,a1) arguments
	#a2 argument contains base address
	#returns pixel address in a0
	
	#make sure to return to calling function after putting correct value in a0!
	#Enter code below!DO NOT MODIFY ANYTHING BEFORE THIS COMMENT LINE!



	li a3, 4
	mul a0, a0, a3 # (x-input * 4)
	
	# add a2, a2, a0 #add (x-input * 4) + base
	
	# y info

	li a3, 128
	mul a1, a1, a3 #(y-input * 128)
	
	li a3, 0
	
	add a3, a0, a1 #add (x-input * 4) + (y-input * 128) together
	
	add a0, a2, a3
	
	ret
	
	#add a3, a0, a1 #add (x-input * 4) + (y-input * 128) together
	
