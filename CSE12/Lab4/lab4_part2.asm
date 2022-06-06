#in this section of code, you must direct the new position of the pixel based on the label we branched to in lab4.asm

#remember at this point, (x,y) coordinates are in a0,a1 registers respectively
#do the appropriate change in a0 a1 values based on the labels below.

#within each label, make sure to jump to the correct label in  lab4.asm file. 
#This is so that exactly one of the labels moveleft,moveright, movedown, moveup is executed depending on which key user enetered as defined in lab4.asm

#NOTE: To make sure you ONLY use a0,a1 registers in your instructions below. There is no need to involve any other register in this section of code!

moveleft:
	#enter code here
	addi a0, a0, -1		# move left 1 unit by -1 for x
	b newPosition
		
movedown:
	#enter code here
	addi a1, a1, 1		# move down 1 unit by 1 for y
	b newPosition
	
moveright:
	#enter code here
	addi a0, a0, 1		# move right 1 unit by 1 for x
	b newPosition 
	

moveup:
	#enter code here
	addi a1, a1, -1		# move up 1 unit by -1 for y
	b newPosition
	
moveDiagonalLeftUp:
	#enter code here
	addi a0, a0, -1 	# move left 1 unit by -1 for x and up by -1 for y
	addi a1, a1, -1
	b newPosition
 	
moveDiagonalLeftDown:
	#enter code here
	addi a0, a0, -1		# move left 1 unit by -1 for x and down by 1 for y
	addi a1, a1, 1
	b newPosition
 	
moveDiagonalRightUp:
	#enter code here
	addi a0, a0, 1		# move right 1 unit by 1 for x and up by -1 for y
	addi a1, a1, -1
	b newPosition

moveDiagonalRightDown:
	#enter code here	# move right 1 unit by 1 for x and down by 1 for y
	addi a0, a0, 1
	addi a1, a1, 1
	b newPosition
