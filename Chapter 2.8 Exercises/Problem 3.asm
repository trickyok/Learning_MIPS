# Author: Gage Farmer
# Date: 2/8/2022
# Prints a random number from 1 to 100

.text
main:

	# Chooses number
	li $v0, 42
	la $a0, 1
	la $a1, 100
	syscall
	move $s0, $a0
	
	# Prints number
	li $v0, 1
	move $a0, $s0
	syscall
	
	# Exit program
	li $v0, 10
	syscall