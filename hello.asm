;--------------------------------
;  Programa Hello World
;--------------------------------
section .data: ;SECTION> sessão que declara as variaveis
  msg db 'hello, word! ', 0xa ;mensagem
  len equ $ - msg ;tamanho da variavel


section .text: ;sessão da criação do Programa

global _start

_start:
mov edx, len ; tamanho
mov ecx, msg ; escrevendo
mov ebx, 1   ; arquivo de saido para mostrar na tela
mov eax, 4   ; mandar a informação para o sistema
int 0x80   ;INDEREÇO DO QERN

;saida
mov eax, 1
mov ebx, 0
int 0x80



;______________________________________
;comando para compilar no terminal
; nasm -f elf64 (nome_do_Programa.asm)
; nasm -f elf64 hhh.asm
;______________________________________
;
;
;
;
;

;daniel@daniel-Turin-Pavilion ~/assembly $ nasm -f elf64 hhh.asm
;daniel@daniel-Turin-Pavilion ~/assembly $ ls
;hhh.asm  hhh.o
;daniel@daniel-Turin-Pavilion ~/assembly $ ld -s -o hhh hhh.o
;daniel@daniel-Turin-Pavilion ~/assembly $ ls
;hhh  hhh.asm  hhh.o
;daniel@daniel-Turin-Pavilion ~/assembly $ ./hhh
;xxxxxxxxxxxxxxxx
;daniel@daniel-Turin-Pavilion ~/assembly $
