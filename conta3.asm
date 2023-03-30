.model small
.stack 200h
.data
	stringi db  "inserisci un numero: ", 13, 10,"$"
    car db 0
    
	
.code
main: 
	mov ax,@data
	mov ds,ax

	mov cx,0 ; inizializzo cx (contatore) a ZERO 
;stampo la stringa
salta:
    lea dx,stringi
	mov ah,09h
    int 21h

rizqy:
	;inserimento da tastiera --> dato in al
	mov ah,01h
    int 21h

	;controllo invio
	cmp al,13d
	je fine
	;controllo 3
	cmp al,'3'
	jne salta
	inc cx
	jmp salta

fine:
	add cx,48
	mov dx,cx
	mov ah,02h
	int 21h

	mov ax,4ch
	int 21h