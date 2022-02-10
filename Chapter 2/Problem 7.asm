# Author: Gage Farmer
# Date: 2/10/2022
# Opens an input dialog box, reads string value, and
# writes string back to user in a message box

.text
main:

	# Opens input box
	li $v0, 54
	la $a0, prompt
	la $a1, ans
	la $a2, 16
	syscall
	move $s0, $v0
	
	# Outputs string
	li $v0, 55
	la $a0, ans
	la $a1, 1
	syscall
	
	# Exit program
	li $v0, 10
	syscall
	
.data
prompt: 	.asciiz "say something"
ans:		.asciiz "null"