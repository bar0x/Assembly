.model small
.stack 200h
.data
	stringi db  "inserisci il numero iniziale: ", 13, 10,"$"
	;num è la variabile che tiene conto della riga in cui siamo
    num db 0
	
.code
main: 
	mov ax,@data
	mov ds,ax
    
    lea dx,stringi
    mov ah,09h
    int 21h
    
    ;input cifra senza echo:
    mov ah,08h
    int 21h
    sub al,30h ;sottraggo 48 (o 30h è uguale) per trasformare il numero da hex a dec,
    
    mov bl,al ;sposto il valore inserito dall'utente
    inc num 
    mov cl,num

    ;vado a capo:
    mov dl,10
    mov ah,02h
    int 21h
    mov dl,13d
    mov ah,02h
    int 21h

    add num 30h ;ritrasformo il numero da hex a dec

colonna:
    mov dl,num ;sposto num in dl
    mov ah,02h ;stampo il valore 
    int 21h

    dec cl
    cmp cl, 0
    jb riga
