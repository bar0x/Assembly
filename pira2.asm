.model small
.stack 200h
.data
    stringi db "inserisci il numero di righe: ",13,10,"$"
    cont dw 0
	

.code
main: 
	mov ax,@data
	mov ds,ax
    
    lea dx,stringi ;stampa stringi
    mov ah,09h
    int 21h

    mov ah,08h ;inserimento car
    int 21h


 
    mov ah,0  ;resetto ah
    mov cx,ax
    mov cont,ax
    mov bx,2Ah

    
Andrea: ;loop stampa righe
    mov dx,bx
    mov ah,09h
    int 21h
    
    
    loop Andrea 

    dec cont
    mov cx,cont
    ;vado a capo:
    mov dl,10
    mov ah,02h
    int 21h
    mov dl,13
    mov ah,02h
    int 21h

    cmp cont,0
    jne Andrea 
    
    mov ah,4Ch
    int 21h

end main