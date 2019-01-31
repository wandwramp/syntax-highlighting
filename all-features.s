.text
.global main
main: #Inline comment! (
	addu $13, $1, $sp
	movsg $ra, $cctrl
	addui $2, $0, 0x0F1
	addui $1, $0, -123
	la $1, main
	sw $1, main+1($sp)
	rfe

	.equ things, 123
	
rfe_label:
label_rfe:

# Comment with "string" and "\escape" )
.data
.bss
	.space 1
	.word 1
	.ascii "hi\\"
	.asciiz 'a'
	.word '\w'
	.word '\''
	.word '\03123'
	.word "\0331231247890asd123\aasd\w \\ \t \r \' \""


.bad directive
label_is_invalid
