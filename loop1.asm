.model small 
.stack 0100h
.data
    num db 0
    stringi db "inserisci il valore: ",13,10,"$"

.code
main:
    mov ax,@data
    mov ds,ax
    mov cx,10d

    mov SI,0100h
    
andrea:
    ;stampo la stringa di richiesta 
    lea dx,stringi
    mov ah,09h
    int 21h
    
    mov [SI],al
    inc si
    loop andrea
    
    


