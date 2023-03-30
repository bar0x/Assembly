.model small
.stack 200h
.data
    n db 8
    stringi "inserire un valore: ",13,10,"$"
.code
main:
    mov ax,@data
    mov ds,ax

    mov SI,0100h ;parti da questa cella di memoria (maria negrs)
    
    ;stampa stringa
    lea dx,stringi
    mov ah,09h
    int 21h

    ;inserimento da tastiera 
    mov ah,01h
    int 21h

    ;nn lo s
    sub al,48d
    mov [SI],al
    inc SI
    loop inizia



    mov ah,4ch
    int 21h
end main