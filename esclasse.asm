.model small
.stack 200h

.data
	stringi  db  "Inserisci il carattere: ", 13, 10,"$"
	car dw ?

.code
main:
    mov ax,@data
	mov ds,ax
    
    ;stampo a video la stringa di input:
    lea dx,stringi
    mov ah,09h
    int 21h

    ;inserimento carattere in ah
    mov ah,01h 
	int 21h

    ;sposto il carattere in car:
    mov car,ah

    ;assegno al contatore colonna 5 in decimale:
    mov cl,04d


Rizzi:
    ; stampo il carattere "x":
    mov ah,car
    mov ah,09h
    int 21h

    ;vado a capo:
    mov dl,10
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h

    loop Rizzi

    mov cl,06d

Golda:
    
    mov ah,09h
    int 21h
    
    loop Golda

    
    mov ah,4ch
	int 21
end main