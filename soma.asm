
 TITLE PROGRAMA PARA SOMAR DOIS NUMEROS 
.MODEL SMALL
.STACK 100h
.DATA
A DB 3
B DB 6
SUM DB ?

.CODE
MOV AX, @DATA
MOV DS, AX

MOV AL, A 
MOV AL, B 
MOV SUM, AL 

ADD SUM, 30h 

MOV AH,02h
MOV DL, SUM 
INT 21h 

MOV AH, 4Ch 
INT 21h
END 
