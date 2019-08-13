SYS_EXIT  equ 1
RET_EXIT  equ 5
SYS_READ  equ 3
SYS_WRITE equ 4
STD_IN    equ 0
STD_OUT   equ 1
MAX_IN    equ 30

segment .data
msg db " copia para entrada de dados no HARDWARE: ",0xA,0xD
len equ $- msg

segment .bss
   nome resb 2

segment .text

global _start

_start:

mov rax,SYS_WRITE
mov rbx,STD_OUT
mov rcx,msg
mov rdx,len
int 0x80

;entrada de dados
mov rax,SYS_READ
mov rbx,STD_IN
mov rcx,nome
mov rdx,MAX_IN
int 0x80

;saida
exit:
mov rax,SYS_EXIT
mov rbx,RET_EXIT
int 0x80
