# Mapa de registos
# p: $t0
# pultimo:$t1
# *p $t2
# soma: $t3 

	.data
	.eqv size , 4 
	.eqv print_int10 , 1
array:	.word 7692 , 23 , 5 , 234
	.text
	.globl main

main:	ori $t3 , $t0 , 0
	li $t4 , size
	sub $t4 , $t4 , 1	# $t4 = 3  ( SIZE - 1) 	
	sll $t4 , $t4 , 2
	
	la $t0 , array
	add $t1 , $t0 , $t4

while:	bgt $t0 , $t1 , endW
	lb $t2 , 0($t0)
	addu $t3 , $t3 , $t2
	addi $t0 , $t0 , 1
	j while

endW:	ori $v0 , $0 , print_int10
	or  $a0 , $0 , $t3
	syscall
	
	jr $ra
	
	