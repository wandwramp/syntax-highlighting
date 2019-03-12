" Vim syntax file
" Language: WRAMP Assembly
" Maintainer: Daniel Oosterwijk
" Latest Revision: 2018-03-12

" Copyright (C) 2019 The University of Waikato, Hamilton, New Zealand.
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <https://www.gnu.org/licenses/>.

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
syn match directiveGlobal '\.global [a-zA-Z_][a-zA-Z0-9_]*'
syn match directive '\.word\|\.space'
syn match directive '\.asciiz\|\.ascii'
syn match directive '\.equ'

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
syn match escape '\\0[0-9]*' contained

" Link custom groups to colours
hi def link arith				StorageClass
hi def link bitwise				StorageClass
hi def link test				StorageClass
hi def link branchJ				StorageClass
hi def link branchRelative		StorageClass
hi def link memory				StorageClass
hi def link special				StorageClass
hi def link specialProtected	StorageClass
hi def link specialProtectedRfe	StorageClass
hi def link segment				Define
hi def link directiveGlobal		Macro
hi def link directive			Special
hi def link generalRegister		Identifier
hi def link specialRegister		Identifier
hi def link escape				SpecialChar
