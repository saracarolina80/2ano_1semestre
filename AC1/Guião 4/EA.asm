# MAPA DE REGISTOS
#  p = $t0 
#  *p = $t1
#  

#define SIZE 20
# void main(void)
# {
# static char str[SIZE];
# char *p;
# print_string("Introduza uma string: ");
# read_string(str, SIZE);
# p = str;
# while (*p != '\0')
# {
# *p = *p ? 'a' + 'A'; // 'a'=0x61, 'A'=0x41, 'a'-'A'=0x20
# p++;
# }
# print_string(str);
#} 

	.data
	.eqv SIZE , 20
	.eqv print_string , 4
	.eqv read_string , 8
	
str1:   .asciiz "Introduza uma string: "

str: 	.space 20
 	
 	.text
 	.globl main
 	
 main: 	la $a0 , str1
  	li $v0 , 4
  	syscall 
  	
  	la $a0 , str
  	li $a1 , SIZE
  	li $v0 , 8
  	syscall
  	
  	la $t0 , str
  
 while:	lb $t1 , 0 ($t0)
 	
 	beqz $t1 , endW
 	
 	sub 	$t2,$t1,0x61	#	$t2 = *p - 'a'
	addi	$t3,$t2,0x41	#	$t3 = $t2 + 'A'
	or	$t1,$0,$t3	# 	*p = *p - 'a' + 'A'
	addi	$t0,$t0,1	#	p++;
	j while			# }
 
 endW: 	la $a0 , str
	li $v0 , 4
	syscall
	
	jr $ra 
 	
 	
  	