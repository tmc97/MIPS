# Taylor Cook
#
# Program description: Prompts user for 2 integers and the program then uses
# the Russian Peasant Multiplication method to calculate the product of the
# two given numbers. The final product is shown in $s0 and as a pop-up box.
# Feb 25, 2018

.data
msg1: .asciiz "Please input an integer: "
msg2: .asciiz "Please input a second integer:  "
msg3: .asciiz "The answer is: "

.text
# Put first inputted integer into $t0
la $a0, msg1
addi $v0, $zero, 51  # Syscall to display message and parse input as int
syscall   # $a1 has status, $a0 has data (if valid)
move $t0, $a0  # Preserve data


# Put second inputted integer into $t1
la $a0, msg2
addi $v0, $zero, 51
syscall
move $t1, $a0  # Put data from input into $t1 for preservation

li $a3 1 # Initialize register a3 to 1 for later comparison
j check # Jumps to check whether the entered integers are odd first thing, before incrementing
incdec: add $t0, $t0, $t0 # Multiplies $t0 by 2 ($t0 + $t0)
	sra $t1, $t1, 1	# Divides register t1 by 2^1

check: 	andi $t5, $t1, 1 # Puts either 1 (odd number) or 0 (even number) into $t5
	beq $t5, 1, odd	# Goes to odd loop if a 1 is found in $t5, meaning the second integer is odd
	j incdec

odd: 	add $s0, $t0, $s0 # Adds what is in $t0 (first column) to the result
	beq $t1, $a3, exit # Checks if $t5 has a 1 in it, if so then it goes to exit
	j incdec # Jumps to increment/decrement the integers again if $t1 isn't 1

# Shows the user input
exit: 	la $a0, msg3
	add $a1, $zero, $s0
	addi $v0, $zero, 56 # Syscall to disply
	syscall
