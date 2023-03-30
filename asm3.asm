;varie
;richiesta di un valore da tastiera e stampa
;richiesta di dato, elaborazione e stampa del codice ascii
;richiesta dato, elaborazione  srampa valore numerico



.model small    ;dichiarazione delle variabili, dello stack e della grandezza della stessa.
.stack 200h
.data
   stringa db "Inserisci il valore: ",13,10,"$"
   dato db ?
   
.code
main:
	mov ax,@data
	mov ds,ax
	lea dx,stringa
	mov ah,09h ;comando stampa
	int 21h
	mov ah,01h ;01h: stampa con riscrizione (echo), 08h: stampa senza riscrizione.
	int 21h
	mov dato, al
	add al,dato
	sub al,48
	mov dl,al
	mov ah,02h
	int 21h
	
	
	mov ah,4Ch
	int 21h

end main


;add: addizione dati con trascrizione della seguente nel registro stesso