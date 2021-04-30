# MAPA DE REGISTOS
# $t0 = 1
# $t1 = array
# $t2 = *array

 	.data
 	.eqv SIZE , 3
 	.eqv print_str , 4
 	.eqv print_char , 11
 str1:	.asciiz "Array "
 str2:	.asciiz "De"
 str3	.asciiz "Ponteiros"

array:	.word str1 , str2 , str3
	.text
	.globl main

main:	li $t0 , 0	#i = 0

for: 	bge $t0 , SIZE , endF
	
	la $t1 , array
	sll $t2 , $t1 , 2
	addu $t2 ,$t2 , $t1
	lw $a0 , 0($t2)
	li $v0 ,print_str
	syscall
	li $a0 , '\n'
	li $v0 , print_char
	addi $t0 , $t0 , 1 
	syscall 
	j for 
endF:  	jr $ra