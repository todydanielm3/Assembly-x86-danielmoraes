;programa para entrada de dados 

SYS_EXIT  equ 1
RET_EXIT  equ 5 
SYS_READ  equ 3
SYS_WRITE equ 4
STD_IN    equ 0
STD_OUT   equ 1
MAX_IN    equ 10

segment .data
msg db "Entre com seu nome: ",0xA,0xD
len equ $- msg

segment .bss
  nome resb 2

segment .text

global _start 

_start:
;comando de assembly:
;rax = acumulador para operações numericas
;rbx = acumulador de registro base 
;rcx = registro de conta (string)
;pode usar a letra 'e' antes do comando>> a letra 'r' é para programas 64 bits

mov rax,SYS_WRITE
mov rbx,STD_OUT
mov rcx,msg
mov rdx,len
int 0x80

;Entrada de dados;

mov rax, SYS_READ
mov rbx, STD_IN
mov rcx, nome
mov rdx, MAX_IN 
int 0x80


exit:
mov rax,SYS_EXIT
mov rbx,RET_EXIT
int 0x80

