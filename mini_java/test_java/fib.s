.text
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	jal main
	move $v1, $v0
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	b end
main:
#c'est le main
#calle init
	sub $sp, $sp, 4
	sw $fp, 0($sp)
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	sub $fp, $sp, 8
	move $sp, $fp
#callee code
	move $t0, $zero
	li $a0, 4
	li $v0, 9
	syscall
	move $t0, $v0
	move $t1, $v0
	la $t1, _desc$fibonacci
	sw $t1, 0($t0)
#equals here
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	lw $t0, 0($t0)
	lw $t0, 4($t0)
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
#prepare args
	move $t3, $t0
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	move $t0, $t3
#end args
	jalr $t0
	move $v1, $v0
	add $sp, $sp, 4
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
#caller final2
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	move $t0, $v1
	sw $t0, 0($fp)
	move $t0, $zero
	lw $t0, 0($fp)
#equals here
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	lw $t0, 0($t0)
	lw $t0, 8($t0)
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
#prepare args
	move $t3, $t0
	li $t0, 21
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	move $t0, $t3
#end args
	jalr $t0
	move $v1, $v0
	add $sp, $sp, 8
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
#caller final2
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	move $t0, $v1
	sw $t0, 4($fp)
	lw $t0, 4($fp)
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	jal print_int
	move $v1, $v0
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	la $t0, backslashn
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	jal print_string
	move $v1, $v0
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	li $a0, 12
	li $v0, 9
	syscall
	move $t0, $v0
	move $t1, $v0
	la $t1, _desc$String
	sw $t1, 0($t0)
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	la $t1, str1
	li $t2, 1
	sw $t1, 4($t0)
	sw $t2, 8($t0)
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	lw $t0, 4($t0)
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	jal print_string
	move $v1, $v0
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
#calle final
	add $sp, $fp, 8
	lw $ra, 0($sp)
	add $sp, $sp, 4
	lw $fp, 0($sp)
	add $sp, $sp, 4
	jr $ra
_meth$String$equals$Object:
#calle init
	sub $sp, $sp, 4
	sw $fp, 0($sp)
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	sub $fp, $sp, 0
	move $sp, $fp
#callee code
	la $t0, 8($fp)
	la $t1, 12($fp)
	lw $t0, 4($t0)
	lw $t1, 4($t1)
	sne $t0, $t0, $t1
	beqz $t0, cond1
	li $t0, 1
	move $v0, $t0
	b endcond1
cond1:
	li $t0, 0
	move $v0, $t0
endcond1:
#calle final
	add $sp, $fp, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	lw $fp, 0($sp)
	add $sp, $sp, 4
	jr $ra
concatenate_str:
#calle init
	sub $sp, $sp, 4
	sw $fp, 0($sp)
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	sub $fp, $sp, 0
	move $sp, $fp
#callee code
	lw $t2, 8($t0)
	lw $t3, 8($t1)
	lw $t0, 4($t0)
	lw $t1, 4($t1)
	add $t2, $t3, $t2
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	li $a0, 12
	li $v0, 9
	syscall
	move $t0, $v0
	move $t1, $v0
	la $t1, _desc$String
	sw $t1, 0($t0)
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	sw $t2, 8($v0)
	add $t2, $t2, 1
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	move $a0, $t2
	li $v0, 9
	syscall
	move $v1, $v0
	lw $v0, 0($sp)
	add $sp, $sp, 4
	sw $v1, 4($v0)
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	move $s0, $zero
	move $s1, $t3
cond3:
	slt $t0, $s0, $s1
	beqz $t0, endcond3
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $v1, 0($sp)
	add $t1, $t1, $s0
	add $v1, $v1, $s0
	add $v1, $v1, $zero
	lbu $a0, 0($t1)
	sb $a0, 0($v1)
	lw $v1, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $s0, $s0, 1
	b cond3
endcond3:
	lw $t0, 0($sp)
	add $sp, $sp, 4
	add $t3, $t3, 1
	sub $t2, $t2, $t3
	move $t3, $t2
	move $t1, $t0
	move $a1, $s1
#copy 2
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	move $s0, $zero
	move $s1, $t3
cond2:
	slt $t0, $s0, $s1
	beqz $t0, endcond2
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $v1, 0($sp)
	add $t1, $t1, $s0
	add $v1, $v1, $s0
	add $v1, $v1, $a1
	lbu $a0, 0($t1)
	sb $a0, 0($v1)
	lw $v1, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $s0, $s0, 1
	b cond2
endcond2:
	lw $t0, 0($sp)
	add $sp, $sp, 4
#calle final
	add $sp, $fp, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	lw $fp, 0($sp)
	add $sp, $sp, 4
	jr $ra
print_int:
#calle init
	sub $sp, $sp, 4
	sw $fp, 0($sp)
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	sub $fp, $sp, 0
	move $sp, $fp
#callee code
	add $a0, $t0, 0
	li $v0, 1
	syscall
#calle final
	add $sp, $fp, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	lw $fp, 0($sp)
	add $sp, $sp, 4
	jr $ra
print_string:
#calle init
	sub $sp, $sp, 4
	sw $fp, 0($sp)
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	sub $fp, $sp, 0
	move $sp, $fp
#callee code
	add $a0, $t0, 0
	li $v0, 4
	syscall
#calle final
	add $sp, $fp, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	lw $fp, 0($sp)
	add $sp, $sp, 4
	jr $ra
cerr_div_by_zero:
	la $t0, err_div_by_zero
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	jal print_string
	move $v1, $v0
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	b end
cerr_null_pointer:
	la $t0, err_null_pointer
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	jal print_string
	move $v1, $v0
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	b end
_ctor$fibonacci$fibonacci:
#4
#calle init
	sub $sp, $sp, 4
	sw $fp, 0($sp)
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	sub $fp, $sp, 0
	move $sp, $fp
#callee code
#calle final
	add $sp, $fp, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	lw $fp, 0($sp)
	add $sp, $sp, 4
	jr $ra
_meth$fibonacci$call$int:
#8
#calle init
	sub $sp, $sp, 4
	sw $fp, 0($sp)
	sub $sp, $sp, 4
	sw $ra, 0($sp)
	sub $fp, $sp, 0
	move $sp, $fp
#callee code
#compile_binop
	lw $t0, 12($fp)
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	li $t0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sle $t0, $t1, $t0
	beqz $t0, cond4
#return
	lw $t0, 12($fp)
	move $v0, $t0
	b endcond4
cond4:
#return
#compile_binop
	lw $t0, 8($fp)
#equals here
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	lw $t0, 0($t0)
	lw $t0, 8($t0)
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
#prepare args
	move $t3, $t0
#compile_binop
	lw $t0, 12($fp)
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	li $t0, 1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $t0, $t1, $t0
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	move $t0, $t3
#end args
	jalr $t0
	move $v1, $v0
	add $sp, $sp, 8
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
#caller final2
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	move $t0, $v1
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	lw $t0, 8($fp)
#equals here
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	lw $t0, 0($t0)
	lw $t0, 8($t0)
#caller init
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $t1, 0($sp)
	sub $sp, $sp, 4
	sw $t2, 0($sp)
	sub $sp, $sp, 4
	sw $t3, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
#prepare args
	move $t3, $t0
#compile_binop
	lw $t0, 12($fp)
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	li $t0, 2
	lw $t1, 0($sp)
	add $sp, $sp, 4
	sub $t0, $t1, $t0
	sub $sp, $sp, 4
	sw $t0, 0($sp)
	sub $sp, $sp, 4
	sw $v0, 0($sp)
	move $t0, $t3
#end args
	jalr $t0
	move $v1, $v0
	add $sp, $sp, 8
#caller final
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
#caller final2
	lw $v0, 0($sp)
	add $sp, $sp, 4
	lw $t3, 0($sp)
	add $sp, $sp, 4
	lw $t2, 0($sp)
	add $sp, $sp, 4
	lw $t1, 0($sp)
	add $sp, $sp, 4
	lw $t0, 0($sp)
	add $sp, $sp, 4
	move $t0, $v1
	lw $t1, 0($sp)
	add $sp, $sp, 4
	add $t0, $t1, $t0
	move $v0, $t0
endcond4:
#calle final
	add $sp, $fp, 0
	lw $ra, 0($sp)
	add $sp, $sp, 4
	lw $fp, 0($sp)
	add $sp, $sp, 4
	jr $ra
end:
.data
_desc$Object:
	.word 0
_desc$String:
	.word _desc$Object
	.word _meth$String$equals$Object
_desc$fibonacci:
	.word _desc$Object
	.word _ctor$fibonacci$fibonacci
	.word _meth$fibonacci$call$int
btrue:
	.asciiz "true"
bfalse:
	.asciiz "false"
backslashn:
	.asciiz "\r\n"
err_div_by_zero:
	.asciiz "division by zero"
err_null_pointer:
	.asciiz "null pointer exception"
str1:
	.asciiz "\n"
