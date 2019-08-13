section .data
text db "ola mundo, pao com mortadelaa", 10
len equ $ - text

section .text
global _start

_start:

mov rax, 1
mov rdi, 1
mov rsi, text
mov rdx, len
syscall

mov rax, 60
mov rdi, 0
syscall
