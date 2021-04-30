# O argumento da função é passado em $a0
# O resultado é devolvido em $v0
# Sub-rotina terminal: não devem ser usados registos $sx 

	.data
str1:	.asciiz "Arquitetura de Computadores"
	.eqv print_int10 , 1
	.text
	.globl main
	
main:	addiu $sp , $sp , -4    # fazer espaço na pilha
	sw $ra , 0($sp)          # salvaguardar $ra
	
	la $a0 , str
	jal strlen              # strlen ( str )
	
	move $a0 , $v0
	li $v0 , print_int10       # syscall
	syscall
		
	lw $ra , 0 ($sp)	# repor $ra
	addiu $sp , $sp , 4
	
	li $v0 , 0	    # return 0	
	jr $ra

strlen:	li $t1 , 0		# len = 0

while:	lb $t0 , 0 ($a0)
	addiu $a0 , $a0 ,1 
	beq $t0 , '\0' , endW
	addi $t1 , $t1 , 4
	
	j while

endW:	move $v0 , $t1
	jr $ra 
