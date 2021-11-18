;Autore: Baroni Mattia
;Data: 18.11.21
;Consegna: DATI DUE VALORI IN INGRESSO POT(COMPRESO TRA 0 E 2) E BASE(COMPRESO TRA1 E 3) CALCOLARE IL VALORE: base ^pot

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
	
	;richiedo il valore della potenza:
	lea dx, stringp ;stampa a video di stringp
	mov ah,09h
	int 21h
	
	mov ah,01h ;richiedo l'inserimento del valore della potenza (andrà a finire in al)
	int 21h
	
	mov pot,al ;sposto al in pot (il valore della potenza)
	
	cmp pot,'0' ;comparo pot con lo zero (che in ascii è 48 ma basta mettere lo zero fra le virgolette)
	jb errore   ;salto se è più piccolo
	cmp pot,'2' ;comparo pot con il 2
	ja errore   ;salto se è più grosso
	
	
	;richiedo il valore della base:
	
	lea dx, stringb ;stampa a video di stringp
	mov ah,09h
	int 21h
	
	mov ah,01h
	int 21h
	
	mov base,al
	
	cmp base,'1'
	jb errore
	cmp base,'3'
	ja errore 
	
	
	mul base,pot
	mov 
	jmp poggers 
	
	
	
	
	
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
	
poggers:
