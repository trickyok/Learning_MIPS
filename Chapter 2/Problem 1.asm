# Author: Gage Farmer
# Date: 2/8/2022
# Asks user what pie they like, then
# prints it back out

.text
main:
	
	# Pie prompt
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Read input
	li $v0, 8
	la $a0, input
	lw $a1, inputSize
	syscall
	
	# Output
	li $v0, 4
	la $a0, output1
	syscall
	li $v0, 4
	la $a0, input
	syscall
	li $v0, 4
	la $a0, output2
	syscall
	
	# Exit program
	li $v0, 10
	syscall
	
	
.data
input:		.space 21
inputSize:	.word 20
prompt:		.asciiz "What is your favorite kind of pie?\n"
output1: 	.asciiz "So you like "
output2: 	.asciiz "pie? Cool."