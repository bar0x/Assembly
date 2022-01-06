.model small
.stack 200h
.data
    stringa1 db "Inserisci il numero di righe",13,10,"$"
    num dw ?
    cont dw ?
.code
main:
    mov ax,@data
    mov ds,ax
    ;stampa stringa
    lea dx,stringa1 
    mov ah,09h
    int 21h
    ;acquisisco il numero di righe da tastiera 
    mov ah,08h
    int 21h
    ;sposto la variabile inserita in cx e num 
    mov ah,0
    sub ax,48
    mov bx,ax
    mov num,0
ciclo1:
    mov dx,10
    mov ah,02h
    int 21h
    mov dx,13
    mov ah,02h
    int 21h
    inc num
    mov cx,num
ciclo2:
     mov dx,"*"
    mov ah,02h
    int 21h
    loop ciclo2
    cmp num,bx
    jne ciclo1
    mov ah,4Ch
    int 21h
end main