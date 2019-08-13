
esection .data 
text db "campus party garai", 10 
len EQU $ - text

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
