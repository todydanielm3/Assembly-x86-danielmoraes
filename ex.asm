MOV CX,[N];inicia contador
MOV AX,[Init];valor inicail ax

Count ADD AX,[Step];soma "passo" a ax
LOOP Count ;decrementa cx e repete enquanto cx>0
MOV [Total],AX ;salva total acumulado em "total"

N:    dw  5 ;valor de repetição
Int:  dw  3 ;valor inicial
Step: dw  1 ; passo da soma
Total: resb 10 ;resultado 
