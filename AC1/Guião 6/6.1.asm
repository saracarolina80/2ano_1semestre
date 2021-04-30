
	.data
	
	.eqv SIZE, 3 # #define SIZE 3
	.eqv print_str , 4 
	.eqv print_char , 11 
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3:	.asciiz "Ponteiros"

lista:  .word str1,str2,str3      # static char *array[SIZE]={"Array", "de", "ponteiros"};
	
	.text
	.globl main
	
main: 	li $t0 , 0  # int i;
for: 	bge $t0 , SIZE , endfor    # i < SIZE 
	la $t1 , lista
	sll $t2, $t0 , 2
	addu $t2, $t1 , $t2
	lw  $a0 , 0($t2)
	li $v0, print_str
	syscall
	li $a0 , '\n'
	li $v0 , print_char
	addi $t0 , $t0 , 1 
	syscall 
	j for 
	
endfor: jr $ra 

 
 
