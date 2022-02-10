# Author: Gage Farmer
# Date: 2/9/2022
# Plays a middle C for 1 second in MIDI

.text
main:
	
	# Prints "playing"
	li $v0, 4
	la $a0, start
	syscall
	
	# Plays note
	li $v0, 33
	la $a0, 60
	la $a1, 1000
	la $a2, 69
	la $a3, 50
	syscall
	
	# Prints "done"
	li $v0, 4
	la $a0, end
	syscall
	
	# Exit program
	li $v0, 10
	syscall
	
.data
start: 	.asciiz "playing"
end: 	.asciiz "\ndone"
	