# Mapa de Registos
# $t0 - i
# $t1 - SIZE
# $t2 - j
# $t3 - array[i]
# $t4 - i*4
# $t6 - array

	.data
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
str4:	.asciiz "\nString #"
str5:	.asciiz  ": "
	.align	2
array:	.word	str1, str2, str3
	.eqv	SIZE, 3
	.eqv	print_char, 11
	.eqv	print_int10, 1
	.eqv	print_string, 4
	.text
	.globl main

main:	li $t0 , 0	# i = 0
	la $t1 , SIZE  
	la $t6, array 

for:	bge $t0 , $t1 , endF
	
	la $a0 , str4
	li $v0 , print_str
	syscall
	
	move $a0 , $t0
	li $v0 , print_int10
	syscall
	
	la $a0 , str5
	li $v0 , print_str
	syscall
	
	li $t2 , 0

while:  sll $t4 , $t0 , 2
	addu $t3 , $t6 ,$t4
	lw $t3 , 0($t3)
	addu	$t3, $t3, $t2		#		$t3 = &array[i][j];
	lb	$t3, 0($t3)		#		$t3 = array[i][j];
	
	beq	$t3, '\0', endW
	move	$a0, $t3		#
	li	$v0, print_char		#
	syscall				# 			print_char(array[i][j]);
	li	$a0, '-'		#			
	li	$v0, print_char		#
	syscall				#			print_char('-');
	addi	$t2, $t2, 1		#			j++;
	j 	while2			#		}
endW:		
	addi	$t0, $t0, 1		#		i++;
	j	while			# 	}
endF:					#
	jr	$ra			# } fim do programa