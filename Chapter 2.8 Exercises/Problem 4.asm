# Author: Gage Farmer
# Date: 2/8/2022
# Program sleeps for 4 seconds before exiting

.text
main:

	# Prints "time start"
	li $v0, 4
	la $a0, start
	syscall
	
	# Waits 4 seconds --- But doesn't??
	li $v0, 32
	la $a0, time
	
	# Prints "time end"
	li $v0, 4
	la $a0, end
	syscall
	
	# Exit program
	li $v0, 10
	syscall
	
.data
start: .asciiz "time start"
end: .asciiz "\ntime end"
time: .word 4000