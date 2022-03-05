.model small
.stack 200h
.data
    car1 dw ?
    car2 dw ?
    stringa1 db "Inserisci un carattere",13,10,"$"
    stringa2 db "i due caratteri sono in ordine alfabetico",13,10,"$"
    stringa3 db "i due caratteri non sono in ordine alfabetico",13,10,"$"
    stringa4 db "I due caratteri sono uguali",13,10,"$"
.code
main:
    mov ax,@data
    mov ds,ax
    ;stampo stringa1
    lea dx,stringa1
    mov ah,09h
    int 21h
    ;acquisisco primo carattere da tastiera
    mov ah,01h
    int 21h
    mov ah,0
    mov car1,ax
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
    ;acquisisco secondo carattere da tastiera
    mov ah,01h
    int 21h
    mov ah,0
    mov car2,ax
    ;vado a capo
    mov dx,10
    mov ah,02h
    int 21h
    mov dx,13
    mov ah,02h
    int 21h
    ;confronto i caratteri tra loro
    mov bx,car1
    cmp bx,car2
    jl ordinealfabetico
    je uguali

    lea dx,stringa3
    mov ah,09h
    int 21h
    jmp fine

ordinealfabetico:
    lea dx,stringa2 
    mov ah,09h
    int 21h
    jmp fine

uguali:
    lea dx,stringa4
    mov ah,09h
    int 21h

fine:
    mov ah,4Ch
    int 21h
end main