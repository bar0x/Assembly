.model small
.stack 200h
.data 
    stringa1 db "Inserisci un valore",13,10,"$"
    stringa2 db "Il valore maggiore e' ",13,10,"$"
    stringa3 db "Il valore minore e' ",13,10,"$"
    val1 dw ?
    val2 dw ? 
    val3 dw ?
    val4 dw ?
.code
main:
    mov ax,@data
    mov ds,ax
    ;stampo stringa1
    lea dx,stringa1 
    mov ah,09h
    int 21h
    ;acquisisco primo valore da tastiera 
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
    ;stampo stringa1
    lea dx,stringa1
    mov ah,09h
    int 21h
    ;acquisisco secondo valore da tastiera 
    mov ah,01h
    int 21h
    mov ah,0
    mov val2,ax
    ;vado a capo
    mov dx,10
    mov ah,02h
    int 21h
    mov dx,13
    mov ah,02h
    int 21h
    ;stampo stringa1
    lea dx,stringa1
    mov ah,09h
    int 21h
    ;acquisisco terzo valore da tastiera
    mov ah,01h
    int 21h
    mov ah,0
    mov val3,ax
    ;vado a capo
    mov dx,10
    mov ah,02h
    int 21h
    mov dx,13
    mov ah,02h
    int 21h
    ;stampo stringa1
    lea dx,stringa1
    mov ax,09h
    int 21h
    ;acquisisco quarto valore da tastiera
    mov ah,01h
    int 21h
    mov ah,0
    mov val4,ax
    ;vado a capo
    mov dx,10
    mov ah,02h
    int 21h
    mov dx,13
    mov ah,02h
    int 21h

    mov ah,4Ch
    int 21h
end main