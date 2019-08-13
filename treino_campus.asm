section .data
text db "e campus carai!TODYDANIELM3", 10	
len equ $ - text

section .text
global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, text
	mov rdx, len
	syscall

;saida
mov rax, 60
mov rdi, 0
syscall
