;Autore: Baroni Mattia
;Data: 18.11.21
;Consegna: DATI DUE VALORI IN INGRESSO POT(COMPRESO TRA 0 E 2) E BASE(COMPRESO TRA1 E 3) CALCOLARE IL VALORE: base ^pot

.model small
.stack 200h
.data
	stringi db  "inserisci la grandezza dell'albero: ", 13, 10,"$"
	car db ?
	righ db ?
.code
main: 
	mov ax,@data
	mov ds,ax
	
	;inizializzo
    mov cx,0
    
    ;inizio programma
	lea dx, stringi ;stampa a video di stringi
	mov ah,09h
	int 21h
	
    mov ah,08h
    int 21h
    
    mov car,al

Loop1:
    




fine:
	mov ah,4ch
	int 21h
	
