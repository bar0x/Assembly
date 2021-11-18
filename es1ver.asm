.model small
.stack 200h
.data
	stringb db  "inserisci la base della potenza: ", 13, 10,"$"
	stringp db  "inserisci la potenza della potenza: ", 13, 10,"$"
	stringn db  "il valore non e' accettabile!!!!!!", 13, 10,"$"
	stringo db  "la potenza vale", 13, 10,"$"
	base db ?
	pot db ?
.code
main: 
	mov ax,@data
	mov ds,ax
	
	lea dx, stringp ;stampa a video di stringp
	mov ah,09h
	int 21h
	
	;richiedo il valore della potenza:
	
	mov ah,01h ;richiedo l'inserimento del valore della potenza (andrà a finire in al)
	int 21h
	
	mov pot,al ;sposto al in pot (il valore della potenza)
	
	cmp pot,'0' ;comparo pot con lo zero (che in ascii è 48 ma basta mettere lo zero fra le virgolette)
	jb errore   ;salto se è più piccolo
	cmp pot,'2' ;comparo pot con il 2
	ja errore   ;salto se è più grosso
	jmp fine
	
	;richiedo il valore della base:
	
	lea dx, stringb ;stampa a video di stringp
	mov ah,09h
	int 21h
	
	mov ah,01h
	int 21h
	
	
	
	
	
	
	
	
errore:
	mov dl,10	;invio a capo
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h
	
	lea dx,stringn ;stampo la stringa di errore
	mov ah,09h
	int 21h
	
fine:
	mov ah,4ch
	int 21h
	