.model small
.stack 200h
.data
	stringi db  "inserisci un numero fra 3 e 8: ", 13, 10,"$"
    stringi2 db "Inserisci una E o U",13,10,"$"
    stringe db "Devi inserire un numero compreso tra 3 e 8",13,10,"$"
    stringe2 db "Devi inserire una E o U",13,10,"$"
	carletto db ? ;CARATTERE LETTO, mica quello dei sofficinsasd
    numletto db ?
    conta db ?

.code
main: 
	mov ax,@data
	mov ds,ax
	
input1:
    ;stampo stringa
    lea dx,[stringi]
    mov ah,09h
    int 21h

    ;inserimento dato da tastiera
    mov ah,01h
    int 21h

    mov numletto,al
    mov al,0d
    sub numletto,48d
    cmp [numletto],2d 
    jng xd
    cmp [numletto],8d
    jnl xd
    lea dx,[stringe]
    mov ah,09h
    int 21h
    jmp input1
xd:
    lea dx,[stringi2]
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h
    
    mov [carletto],al
    mov al,0
    cmp [carletto],69d
    jne ciclo1
    cmp [carletto],85d
    jne ciclo1
    lea dx,[stringe2]
    mov ah,09h
    int 21h
    jmp xd

ciclo1:
    ;vado a capo
    mov dx,10
    mov ah,02h
    int 21h
    mov dx,13
    mov ah,02h
    int 21h
    ;stampa lettera
    mov dx,[carletto]
    mov ah,02h
    int 21h
    je 1


    mov ah,4ch
	int 21
end main
