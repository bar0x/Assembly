; Autore: Mattia Baroni
; scopo del programma: 

.model small
.stack 200h
.data
	stringi db  "inserisci il numero iniziale: ", 13, 10,"$"
	errore db "il valore inserito non vale!", 13, 10 ,"$"
    num db ?
	
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
	
	
	
fine:
    
	
	
	
errore:
    lea dx,errore
    mov ah,09h
    int 21h
	
	mov ah,4ch
	int 21h
	