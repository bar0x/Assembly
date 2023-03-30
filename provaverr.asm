.model small
.stack 200h
.data

    stringb db "inserisci la base",13,10,"$"
    stringp db "inserisci la potenza",13,10,"$"
    pot db ?
    base db ?

.code
main:
    mov ax,@data
    mov ds,ax

    lea dx,stringb
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h

    mov base,al

    cmp base,'1'
    jb fine1

    cmp base,'1'
    jg fine1

    ;andiamo a capo
    mov dl,10
    mov ah,02h
    int 21h
    mov dl,13
    mov ah,02h
    int 21h

    ;inserimento potenza
    lea dx,stringp
    mov ah,09h
    int 21h
    mov ah,01h
    int 21h

    mov pot,al
    
    cmp pot,'0'
    jb fine1
    cmp pot,'3'

    ;calcolo la potenza

    sub pot,48
    mov cl,pot
