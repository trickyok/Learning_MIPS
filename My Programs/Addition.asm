# Author: Gage Farmer
# Date: 2/8/2022
# Gets two integer inputs from user,
# and returns their sum.

.text 
main:

	# Prompt input 1
	li $v0, 4
	la $a0, prompt1
	syscall
	
	# Get user input 1
	li $v0, 5
	syscall
	move $s0, $v0
	
	# Prompt input 2
	li $v0, 4
	la $a0, prompt2
	syscall
	
	# Get user input 2
	li $v0, 5
	syscall
	move $s1, $v0
	
	# Add values
	
	
	# Print result (((FIX)))
	li $v0, 1
	move $a0, $s0
	syscall
	li $v0, 1
	move $a0, $s1
	syscall
	
	# Exit the program
	li $v0, 10
	syscall
	
	
.data
prompt1: .asciiz "Enter the first number: "
prompt2: .asciiz "Enter the second number: "
result: .asciiz "\nThe sum is "