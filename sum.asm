;===================================================================================================================================== 
;Program Name: sum.asm                                                                                                     * 
;Programming Language: x86 Assembly                                                                                        *
;Program Description: This program is to sum all the value in the array that user input and output the sum                 *
; value,and manager will call this function                                                                                *
;Author: Shaochen Ren                                                                                                      *
;Email: renleo@csu.fullerton.edu                                                                                           *
;Institution: California State University, Fullerton                                                                       * 
;Course: CPSC 240-05                                                                                                       *
;Start Date: 20 September, 2020                                                                                            *
;Copyright (C) 2020 Shaochen Ren                                                                                           *
;This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License * 
;version 3 as published by the Free Software Foundation.                                                                   *
;This program is distributed in the hsope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied       * 
;Warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.    * 
;A copy of the GNU General Public License v3 is available here:  <https://www.gnu.org/licenses/>. ;======================================================================================================================================
;//
;//
;//
;//
;//===== Begin code area ===========================================================================================================


global array_sum
extern input_array
extern printf

section .data
instructions1 db "Enter a sequence of long integers separated by white space,",10,0
instructions2 db "After the last input press enter followed nu Control+D:"
printSum db "The sum is %ld", 10, 0
sizeCheck db "Size is %ld", 10,0

section .bss

section .text

array_sum:
push rbp
mov rbp, rsp ;now the base pointer(rbp) points to the top of the stack
push rdi
push rsi
push rdx
push rcx
push r8
push r9
push r10
push r11
push r12
push r13
push r14
push r15
push rbx
pushf ;backup rflags

;registers rax, rip, and rsp are usually not backed up
push qword -1

mov r15, rsi ;hold the size
mov r14, rdi ;holds the array
mov r13, 0 ;hold the incrementer
mov r12, 0 ;hold the sum

startLoop:
cmp r13,r15
je printsum
jne addSum
addSum:
ADD r12,qword[r14 + r13* 8]
inc r13
jmp startLoop

printsum:
mov rdi, printSum
mov rsi, r12
mov rax, 0
call printf


pop rax
mov rax, r12
popf
pop rbx
pop r15
pop r14
pop r13
pop r12
pop r11
pop r10
pop r9
pop r8
pop rcx
pop rdx
pop rsi
pop rdi
pop rbp

ret
