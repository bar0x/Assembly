;dati 10 valori scopri quali di questi sono nell'intervallo 3 - 6.
;autore: Mattia Baroni

.model small
.stack 200h
.data 
    stringi db "Inserisci il valore",13,10,"$"
.code
main:
    mov ax,@data
    mov ds,ax
    

    ;stampo stringa1
    lea dx,stringi 
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
 