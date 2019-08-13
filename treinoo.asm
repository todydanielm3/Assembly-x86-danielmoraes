section .data
text db "Marconi gay" ,10
len EQU  $ - text

section .text
  global _start

_start:
MOV rax, 1
MOV rdi, 1
MOV rsi, text
MOV rdx, len
syscall

MOV rax, 60
MOV rdi, 0
syscall
