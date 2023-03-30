;chiedere all'utente 4 valori(ad una cifra) 
;e stampare il maggiore.
.model small
.stack 200h
.data
	stringi  db  "Inserisci un valore ", 13, 10,"$"
	stringo  db  "Il valore maggiore e': ","$"
	max dw ?
.code
main: 
	mov ax,@data
	mov ds,ax
	mov cx,04h	;conteggia quante volte preleviamo il dato dallo stack
chiedi:
	lea dx,stringi ;stampa stringa input numero
	mov ah,09h
	int 21h
	
	mov ah,01h ;input di n da tastiera
	int 21h
	
	mov ah,0 ;pulisco ah
	
	push ax  ;mando il dato nello stack
	
	loop chiedi
	
	
	call calcolo

	mov dl,10	;invio a capo
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h
	
	lea dx,stringo ;stampo la stringa di output
	mov ah,09h
	int 21h
	
	mov dx,max ;sposto il numero massimo in dx e lo stampo
	mov ah,02h
	int 21h
	
	mov ah,4Ch 
	int 21h
end main



;---------- procedure ----------
calcolo proc near
	push BP
	mov BP,SP
	
	mov ax,[BP+2]
	mov max,ax
	
	
	mov ax,0d
	mov ax,[BP+4]		
	cmp ax,max 	
	jbe skip
	mov max,ax  
skip:
	mov ax,0d
	mov ax,[BP+6]		
	cmp ax,max 	
	jbe skip2
	mov max,ax  
skip2:
	mov ax,0d
	mov ax,[BP+8]		
	cmp ax,max 	
	jbe skip3
	mov max,ax
skip3:
	
calcolo endp
	
