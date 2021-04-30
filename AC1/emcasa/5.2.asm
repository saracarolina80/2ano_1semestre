# Mapa de registos
# p: $t0
# *p: $t1
# lista+Size: $t2 

	.data
	.eqv SIZE , 10
	.eqv print_int10 , 1
	.eqv print_string , 4
	
str1:	.asciiz "\nConteudo do array:\n"
str2: 	.asciiz "; "

lista:	.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15 

	.text
	.globl main
	
main:	li $v0 , print_string
	li $a0 , str1
	syscall
	
	la $t0 , lista
	li $t2 , SIZE
	sll $t2 , $t2 ,2    # $t2 = size * 4 
	addu $t2 ,$t2 , $t0

for:	bgeu $t0 , $t2 , endF
	lw $t1 , 0($t0)
	
	li $v0 , print_int10
	move $a0 , $t1
	syscall
	
	li $v0 , print_string
	la $a0 , str2
	syscall
	
	addiu $t0, $t0 ,1
	
	j for
	
endF:	jr $ra