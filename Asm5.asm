
;strutturiamo un programma che chiede in input due variabili (che saranno val1 e val2) e le confrontiamo in ordine crescente

.model small
.stack 200h
.data
	string_i db "inserisci un valore", 10,13,"$" ;
	string_o db "il valore maggiore e': ","$"
	val1 dw ?
	val2 dw ?

.code
main:
	mov ax,@data
	mov ds,ax
	
	
	;chiedo l'inserimento della variabile 1 in "val1"
	
	lea dx,string_i
	mov ah,09h
	int 21h
	mov ah,01h
	int 21h
	mov ah,0
	mov val1,ax
	
	;vado a capo
	
	mov dx,10
	mov ah,02h
	int 21h
	mov dx,13
	mov ah,02h
	int 21h
	
	;chiedo l'inserimento della variabile 2 in "val2"
	
	lea dx,string_i
	mov ah,09h
	int 21h
	mov ah,01h
	int 21h
	mov ah,0
	mov val2,ax
	
	;sposto val1 e val2 per l'operazione
	
	mov bx,val1
	cmp bx,val2
	jae stampa 
	lea dx,stringa_o
	mov ah,09h
	int 21h
	mov dx, val2
	mov ah,02h
	int 21h
	
stampa:
	lea dx,stringa_o
	mov ah,09h
	int 21h
	mov dx, val1
	mov ah,02h
	int 21h
	fine:
	mov ah,4ch
	int 21h
end main