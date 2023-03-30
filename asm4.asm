.model small
.stack 200h

.data
	stringa db "il prodotto vale:",13,10,"$"
	fat1 db 2
	fat2 db 3

.code
main:
	mov ax,@data
	mov ds,ax
	lea dx,stringa
	mov ah,09h ;comandostampa
	int 21h
	
	mov al,fat1
	mov bl,fat2
	mul bl 
	add al,48
	mov dl,al
	mov ah,02h
	int 21h
	mov ah,4Ch
	int 21h

end main
