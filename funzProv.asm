model small
.stack 200h
.data
	stringi1 db "inserisci il primo numero ",13,10,"$"
    stringi2 db "inserisci il secondo numero",13,10,"$"
    stringo db "la somma dei due valori e':"13,10,"$"
    var1 db ?
    var2 db ?
.code 

main: 
	mov ax,@data
	mov ds,ax
    
    ;inserimento valore 1
    lea dx,stringi1
    mov ah,09h
    int 21h

    mov var1,al
    mov al,0d
    
    
    ;inserimento valore 2
    lea dx,stringi2
    mov ah,09h
    int 21h

    mov var2,al
    mov al,0

    call somma


    mov ah,4Ch 
	int 21h


somma proc near 
