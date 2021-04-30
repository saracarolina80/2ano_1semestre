# Mapa de Registos
# i: $t0
# lista: $t1
# lista + i: $t2 

	.data
	.eqv SIZE , 5
	.eqv print_string , 4
	.eqv read_int , 5
str1:	.asciiz "\n Introduza um número: "
	.align 2
lista:	.space 20    # 4*5
	.text
	.globl main

main:	li $t0 , 0         # i = 0

for:	bge $t0 , SIZE , endF 
	la $a0 , str1
	li $v0 , print_string
	syscall
	
	li $v0 , read_int
	syscall
	
	la $t1 , lista  
	sll $t2 , $t0 , 2
	addu $t2 , $t1 , $t2
	sw $v0 , 0 ($t2)
	
	addi $t0 , $t0 , 1
	
	j for

endF:	jr $ra
	