# Author: Gage Farmer
# Date: 2/9/2022
# Reads and prints floating point number

.text
main:

	# Print prompt
	li $v0, 4
	la $a0, prompt
	syscall
	
	# Get input
	li $v0, 6
	syscall
	
	# Print output prompt
	li $v0, 4
	la $a0, output
	syscall
	
	# Print number
	li $v0, 2
	mov.d $f12, $f0		# Have to move floats in Coproc 1 instead of main register
	syscall
	
	# Exit program
	li $v0, 10
	syscall
	
.data
prompt: .asciiz "Input a number with a decimal: "
output: .asciiz "\nYou entered the number "