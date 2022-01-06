.model small
.stack 200h
.data
    stringa1 db "Inserisci il numero di righe",13,10,"$"
    num dw ?
.code 
main:
    mov ax,@data
    mov ds,ax
    ;stampa stringa
    lea dx,stringa1 
    mov ah,09h
    int 21h
    ;aquisisco numero righe 
    mov ah,08h
    int 21h
    ;sposto la variabile inserita in cx e num 
    mov ah,0
    sub ax,48
    mov num,ax
    mov cx,num 
ciclo1:
    mov dx,10
    mov ah,02h
    int 21h
    mov dx,13
    mov ah,02h
    int 21h
    mov cx,num
ciclo2:
    mov dx,"*"
    mov ah,02h
    int 21h
    loop ciclo2
    dec num
    cmp num,0
    jne ciclo1
fine:
    mov ah,4Ch
    int 21h
end main 