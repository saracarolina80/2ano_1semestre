# Mapa de registos
# num: $t0
# p: $t1
# *p: $t2

	.data
	.eqv	SIZE, 20
	.eqv 	read_string , 8
	.eqv	print_int10 , 1
str:	.space 20

	.text
	.globl main

main:   ori $t0 , $0 , 0   # num = 0
	ori $v0 , $0 , read_string
	la $a0 , str
	li $a1 , SIZE
	syscall
	
	la $t1 , str   # p = str

while:  lb $t2, 0($t1) # *p = p
	beq $t2 , '0' , endW 
	
if: 	blt $t2, '0' , endIf
	bgt $t2, '9' , endIf
	addi $t0 , $0 , 1
	
endIf:	addiu $t1 , $0 , 1
	j while
	
endW:	ori $v0 , $0 , print_int10
	move $a0 , $t0
	syscall
	jr $ra