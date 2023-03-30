.model small
.stack 200h
.data
	stringi db  "inserisci un numero: ", 13, 10,"$"
    stringp db  "il numero e' pari", 13, 10, "$"
    stringd db  "il numero e' dispari", 13, 10, "$"
	num db ?

.code
main: 
	mov ax,@data
	mov ds,ax

    mov al,0 ;resetto al

    lea dx,stringi ;stampo la stringa di input,
    mov ah,09h
    int 21h

   
	mov ah,01h  ;inserimento da tastiera --> dato in al
    int 21h
	
    ;add al,48d ;converto da esa a dec
    
    
    mov ax,2d

    div num

    cmp ah,'0'

    jne nonuguale

    lea dx,stringp ;stampo che il numero  è pari
    mov ah,09h
    int 21h

nonuguale:

    lea dx,stringd ;stampo che il numero è dispari
    mov ah,09h
    int 21h

	mov ax,4ch
	int 21h
end main