.model small
.stack 200h
.data
    car db ?
    stringa1 db "Inserisci un carattere minuscolo",13,10,"$"
    stringa2 db "Il carattere maiuscolo e ",13,10,"$"
.code
main:
    mov ax,@data
    mov ds,ax
    ;stampa video di stringa1.
    lea dx,stringa1
    mov ah,09h
    int 21h
    ;capo.
    mov dx,10
    mov ah,02h
    int 21h
    mov dx,13
    mov ah,02h
    int 21h
    ;imput carattere minuscolo.
    mov ah,01h
    int 21h
    mov ah,0
    mov car,al
    ;capo
    mov dx,10
    mov ah,02h
    int 21h
    mov dx,13
    mov ah,02h
    int 21h
    ;stampa a video di stringa2.
    lea dx,stringa2
    mov ah,09h
    int 21h
    ;sottraggo il necessario per arrivare al corrispettivo carattere minuscolo nella tabella ASCII (in questo caso 32) e lo stampo a video.
    mov bl,car
    sub bl,32
    mov dl,bl
    mov ah,02h
    int 21h

    mov ah,4Ch
    int 21h
end main