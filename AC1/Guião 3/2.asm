# Mapa de registos:
# $t0 – value
# $t1 – bit
# $t2 - i
# $t3 = remainder
	.data
str1:  .asciiz "Introduza um numero: "
str2:  .asciiz "O valor em binario e: "
str3:  .asciiz " "
       .eqv print_string,4
       .eqv read_int,5
       .eqv print_char,1 
       .text
       .globl main
main: la   $a0,str1
      li   $v0,print_string  	# (instrução virtual)
      syscall		   	# print_string(str1);
      ori  $v0,$0,read_int 	# value=read_int();
      syscall
      or   $t0,$v0,$0		# pass the value in $v0 to $t0
      la   $a0,str2
      li   $v0,print_string
      syscall			# print_string("...");
      li   $t2,0		# i = 0, instrução virtual
for:  bge  $t2,32,endfor 	# while(i < 32) {
      rem  $t3,$t2,4
      andi $t1,$t0,0x80000000   # (instrução virtual)
      
if:   bnez $t3,if1		#if(rem != 0)
      la   $a0,str3
      li   $v0,print_string
      syscall

if1:  beqz $t1,else             # if(bit != 0)
      li   $a0,1		# print_char('1');
      ori  $v0,$0,print_char
      syscall
      j    endif
      
else: li   $a0,0		# else
      ori  $v0,$0,print_char	# print_char('0');
      syscall
                    		# value = value << 1;			
endif:sll  $t0,$t0,1		# value = value << 1;
      addi $t2,$t2,1      	# i++;
      j    for 			# }
endfor: 			
      jr $ra # fim do programa 