" Vim syntax file
" Language: WRAMP Assembly
" Maintainer: Daniel Oosterwijk
" Latest Revision: 2018-01-29

if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "wramp"

" Instruction names
syn keyword arith add addi addu addui
syn keyword arith sub subi subu subui
syn keyword arith mult multi multu multui
syn keyword arith div divi divu divui
syn keyword arith rem remi remu remui
syn keyword arith lhi la
syn keyword bitwise and andi
syn keyword bitwise or ori
syn keyword bitwise xor xori
syn keyword bitwise sll slli
syn keyword bitwise srl srli
syn keyword bitwise sra srai
syn keyword test slt slti sltu sltui
syn keyword test sgt sgti sgtu sgtui
syn keyword test sle slei sleu sleui
syn keyword test sge sgei sgeu sgeui
syn keyword test seq seqi sequ sequi
syn keyword test sne snei sneu sneui
syn keyword branchJ j jr jal jalr
syn keyword branchRelative beqz bnez
syn keyword memory lw sw
syn keyword special break syscall
syn keyword specialProtected movgs movsg
syn keyword specialProtectedRfe rfe

" Assembler directives
syn match segment '\.text\|\.data\|\.bss'
syn match directiveGlobal '\.global [a-zA-Z0-9_]\+'
syn match directive '\.word\|\.space'
syn match directive '\.asciiz\|\.ascii'
syn match directive '\.equ [a-zA-Z0-9_]\+,'

" Registers
syn match generalRegister '\$\d'
syn match generalRegister '\$1[0-5]'
syn match generalRegister '\$\(sp\|ra\)'
syn match specialRegister '\$\(cctrl\|estat\|icount\|ccount\)'
syn match specialRegister '\$\(evec\|ear\|esp\|ers\)'

" Things that belong to vim-declared groups
" Statement group
syn match label '[a-zA-Z_][a-zA-Z0-9_]*:\?'
" Comment group
syn match comment '#.*'
" Constant group
syn match number '[+-]\?\d\+'
syn match number '0x[0-9a-fA-F]\+'
syn region string start='"' end='"' contains=escape
syn region character start="'" end="'" contains=escape

" Other misc stuff
syn match escape '\\[rnta\'"]' contained

" Link custom groups to colours
hi def link arith				Type
hi def link bitwise				Type
hi def link test				Type
hi def link branchJ				Type
hi def link branchRelative		Type
hi def link memory				Type
hi def link special				Type
hi def link specialProtected	Type
hi def link specialRfe			Type
hi def link segment				Define
hi def link directiveGlobal		Macro
hi def link directive			Special
hi def link generalRegister		Identifier
hi def link specialRegister		Identifier
hi def link escape				SpecialChar
