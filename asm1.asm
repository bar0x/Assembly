;ESEGUI LA SOMA TRA DUE NUMERI DA PROGRAMMA
.model small       ;definisce la lunghezza dei segmenti (la parte di memoria dove viene immagazzinato il codice).
.stack 200h        ;definisce la dimensione della memoria stack.
.data              ;dopo il punto data verranno messe le dichiarazioni delle variabili


.code              ;
	n db 3
	m db 5
.code
main:
	mov ax,@data
	mov ds,ax


	;add n,m       non ammissibile, dobbiamo servircdi dei registri
	mov al,0
	mov al,n
	add al,m





	mov ax,4ch
	int 21h
end main 