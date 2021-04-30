# Mapa de registos:
# str: $a0 -> $s0 (argumento é passado em $a0)
# p1: $s1 (registo callee-saved)
# p2: $s2 (registo callee-saved)
# 

	.data
str1:	.asciiz "?ogimoc raroman sereuQ"
	.eqv print_string , 4
	.text
	.globl main

main:	addiu $sp , $sp , -4    # fazer espaço na pilha
	sw $ra , 0($sp)          # salvaguardar $ra
	
	la $a0 , str1
	jal strrev            # strlen ( str )
	
	move $a0 , $v0
	li $v0 , print_string       # syscall
	syscall
		
	lw $ra , 0 ($sp)	# repor $ra
	addiu $sp , $sp , 4
	
	li $v0 , 0	    # return 0	
	jr $ra



strrev:	addiu $sp , $sp , -16		
	sw $ra , 0 ($sp) # salvaguarda o endereço de retorno 
	
	sw $s0,4($sp) # guarda valor dos registos
 	sw $s1,8($sp) # $s0, $s1 e $s2
 	sw $s2,12($sp) #
 	
 	move $s0,$a0 # registo "callee-saved"
 	move $s1,$a0 # p1 = str
 	move $s2,$a0 # p2 = str
 
 while: lb $t1 , 0 ($s2)
 	beq $t1 , '\0' , endW
 	addiu $s2 , $s2 , 1
	j while
	
endW:	addiu $s2 ,  $s2 , -1

while1:	bge $s1 , $s2 , endW1
	
	move 	$a0, $s1 		# Passar os valores para a proxima funçao
	move 	$a1, $s2		#
	jal exchange
	
	addiu $s1 , $s1 , 1
	addiu $s2 , $s2 , -1
	
	j while1
	
endW1:	move $v0 , $s0
	lw 	$ra, 0($sp) 		# 	repõe endereço de retorno
 	lw 	$s0, 4($sp) 		# 	repõe o valor dos registos
	lw 	$s1, 8($sp)		# 	$s0, $s1 e $s2
	lw 	$s2, 12($sp) 		#
	addiu 	$sp, $sp, 16		# 	liberta espaço da stack

	jr $ra

exchange: lb	$t0, 0($a0)		#	$t0 = *c1:
	lb	$t1, 0($a1)		#	$t1 = *c2;
	sb	$t0, 0($a1)
	sb	$t1, 0($a0)
	jr	$ra			# } fim do programa
	
