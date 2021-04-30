#define SIZE 10
#define TRUE 1
#define FALSE 0
# void main(void)
# {
# static int lista[SIZE];
# int houveTroca, i, aux;
# // inserir aqui o código para leitura de valores e
# // preenchimento do array
# int *p
	
	#for(p = lista ; p < lista + SIZE ; p++)
	
		# print_string("\nIntroduza um numero: ");
		# *P= read_int();
		
	#}
# do {
# 	houveTroca = FALSE;
# 	for (i=0; i < SIZE-1; i++) {
# 		if (lista[i] > lista[i+1]) {
# 			aux = lista[i];
# 			lista[i] = lista[i+1];
# 			lista[i+1] = aux;
#	 		houveTroca = TRUE;
# 		}
# 	}
# } while (houveTroca==TRUE);
# // inserir aqui o código de impressão do conteúdo do array
#  for(i = 0; i < SIZE; i++) {
		#print_int10(lista[i]);
		#print_string("; "); }
#}

 # Mapa de registos
# p = $t0
# SIZE = $t1
# SIZE + lista = $t2
# houve_troca: $t4
# i: $t5
# lista: $t6
# lista + i: $t7 

	.data
	.eqv FALSE , 0
	.eqv TRUE , 1
	.eqv SIZE , 10
	.eqv print_string , 4
	.eqv read_int , 5
	.eqv print_int10 , 1

str1:   .asciiz "\nIntroduza um numero: "
str2:   .asciiz "; " 
str3:   .asciiz "Array Ordenado: "

	.align 2
lista: 	.space 40    #array de inteiros 4* SIZE 

	.text
	.globl main

main: 	la $t0 , lista  	 # p = lista
	li $t1 , SIZE
	sll $t2 , $t1, 2 	 # tmp = SIZE * 4
	addu $t2 , $t2 , $t0 	# tmp = SIZE + lista
	
for1:    bgeu $t0 , $t2 , endF1
	
	la $a0 , str1
	li $v0 , print_string
	syscall
	
	li $v0,read_int	
	syscall	
	sw $v0 , 0 ($t0)
	
	addiu $t0 , $t0 , 4
	
	j for1
	
endF1:  

do:     li $t4 , FALSE
	li $t5 , 0
	

for2:	bge $t5 , 9 , endF2

	la	$t0,lista	#	*p = &(lista[0]);
	sll	$t5,$t4,2	#	int tmp = i*4;
	addu	$t5,$t0,$t5	#	tmp = &(lista[i]);
	
	lw	$t6,0($t5)	#	lista[i] = aux1
	lw	$t7,4($t5)	#	lista[i+1] = aux2
	
if:	ble    $t6 , $t7 , endIf

	sw	$t6,4($t5)	#			aux2 = lista[i]
	sw	$t7,0($t5)	#			aux1 = lista[i+1]
	
	li $t3 , TRUE

endIf:	addiu	$t4,$t4,1	#	i++
	j for2			#	}
endF2:

while: 	beq	$t3,TRUE,do	# } while(houveTroca == TRUE);	
	
	li $t5 , 0
	li $v0,print_string
	la $a0,str3
	syscall			# print_string("\nO array ordenado e´: ")	

for3:	bge	$t4,10,endf3	# for (i = 0; i < SIZE; i++)
				# {
	la	$t0,lista	#	int *p = &(lista[i])
	sll	$t5,$t4,2	#	int tmp = i*4
	addu	$t5,$t0,$t5	#	tmp = &(lista[i])
	
	li	$v0,print_int10
	lw	$a0,0($t5)	#	*P = &(lista[i])	
	syscall			# 	print_int10(lista[i]);
	
	li 	$v0,print_string
	la 	$a0,str2
	syscall			# print_string("; ")
	
	addi	$t4,$t4,1	# 	i++			
	j for3			# }
endf3:

	jr $ra			# Termina programa 
	
	
	   

  