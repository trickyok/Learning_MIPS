# Author: Charles Kann
# Program to read a string from a user, and
# print that string back to the console.
.text
main:
	# Prompt for the string to enter
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Read the string
	li $v0, 8
	la $a0, input
	lw $a1, inputSize	# Loads value 80 into register $a1
	syscall
	
	# Output the text
	li $v0, 4
	la $a0, output
	syscall
	
	# Output the number
	li $v0, 4
	la $a0, input
	syscall
	
	 # Exit the program
	 li $v0, 10
	 syscall
	 
.data
input:		.space 81	# Allocates 80 bytes of memory, with 1 extra
				 # to be used for the empty byte at the end
inputSize:	.word 80	# Allocates 4 bytes of memory, then can
				 # be given an integer value. (.word can be
				 # given ANY data type, not just ints)
prompt:		.asciiz "Please enter an string: "
output:		.asciiz "\nYou typed the string: "