 # Mapa de Registos
# $t0 - p
# $t1 - pUltimo
# $t2 - *p
# $t5 - aux1
 	.data
 	.eqv SIZE , 3
 	.eqv print_str , 4
 	.eqv print_char , 11
 str1:	.asciiz "Array "
 str2:	.asciiz "De"
 str3	.asciiz "Ponteiros"
	.align 2
array:	.word str1 , str2 , str3
	.text
	.globl main
	
main:   la $t0 , array 		# p = array;
	li $t5 , SIZE
	sll $t5 , $t5 , 2
	addu $t1 , $t0 , $t5

for:	bge $t0 , $t1 , endF
	lw $t2 , 0($t0)
	move $a0 , $t2
	li $v0 , print_str
	syscall
	
	li $a0 , '\n'
	li $v0 , print_char
	syscall
	
	addi $t0 ,$t0 , 4 #p++
	
	j for

endF:   jr $ra
