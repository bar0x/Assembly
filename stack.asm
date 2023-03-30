.model small
.stack 200h
.data 

    stringa db "inserisci un valore"13,10,"$"
    n db ?
    diff1 dw ?
    
.code

diff proc near
    push BP
    mov BP,SP
    mov ax,[BP+4]
    mov bx,[BP+6]
    cmp ax,bx
    jl cambia
    jmp fine

cambia:
    xcng ax,bx

fine:
    sub ax,bx
    mov [BP+6],ax
    pop bp
    ret
    endp

main:
    mov ax,@data
    mov ds,ax

    ;richiedo il primo valore:

    lea dx,stringa
    mov ah,09h
    int 21h

    mov ah,01h      
    int 21h

    mov ah,00       ;pulisco la parte alta di ax
    sub al,48d      ;converto in decimale

    push ax         ;pusho il primo valore nello stack


    ;richiedo il secondo valore:

    lea dx,stringa
    mov ah,09h
    int 21h

    mov ah,01h      
    int 21h

    mov ah,00       ;pulisco la parte alta di ax
    sub al,48d      ;converto in decimale

    push ax         ;pusho il primo valore nello stack

    ;chiamata alla funzione

    call diff       ;introduzione nome funzione e chiamata della stessa
    pop ax
    pop ax
    mov diff,ax
    mov dx,diff




; bp
;ip
;4
;6