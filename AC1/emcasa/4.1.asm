# Mapa de registos
# num: $t0
# i: $t1
# str: $t2
# str+i: $t3
# str[i]: $t4

	.data
	.eqv SIZE, 20   # 
	.eqv read_string , 8
	.eqv print_int10, 1

str:  	.space SIZE    # static char str[SIZE];
	.text
	.globl main 

main: 	la $a0 , str   # obter o endereço inicial do array str   str[0]
	li $a1 , SIZE   
	li $v0 , read_string
	syscall
	
	li $t0 , 0
	li $t1 , 0 

while:  
	la $t2, str #str[0]
	addu $t3, $t2, $t1   # str + i
	lb $t4, 0($t3)
	beq $t4 , '\0' , endW
	
if: 	blt $t4 , '0' , endIf
	bgt $t4 , '9' , endIf
	addi $t0 , $t0 , 1
	
endIf:	addi $t1 , $t1, 1
	j while
	
endW:   move $a0 , $t0
	li $v0 , print_int10
	syscall
	
	jr $ra 
	