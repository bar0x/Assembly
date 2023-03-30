; Autore: Mattia Baroni
; scopo del programma: 

.model small
.stack 200h
.data
	stringi db  "inserisci il numero iniziale: ", 13, 10,"$"
	errore db "il valore inserito non vale!", 13, 10 ,"$"
    stringo db "fine del programma", 13,10,"$"
    num db 0
    
	
.code
main: 
	mov ax,@data
	mov ds,ax
	
	;stampo stringa input:
    lea dx,stringi
    mov ah,09h
    int 21h

    ;faccio inserire i dati:
	mov ah,01h
    int 21h

    ;spostiamo al in num:
    mov num,al
    
    ;verifica numero parte 1:
    cmp num,"0"
    ja errore

    ;verifica numero parte 2:
    cmp num, "9"
    jb errore

    mov bl,num

    jmp printing
printing:
    cmp bl,num
    je fine
    mov ah,bl
    mov ah,09h
    dec bl

fine:
    lea dx,stringo
	
	
	
errore:
    lea dx,errore
    mov ah,09h
    int 21h
	
	mov ah,4ch
	int 21h
	