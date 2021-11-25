; Autore: Mattia Baroni,
; scopo del programma: fare pratica coni numeri a più cifre: il programma richiederà un numero "a pezzi" e 
; data: 25.11.21


.model small
.stack 200h
.data
	stringi db  "inserisci la cifra selezionata: ", 13, 10,"$"
	stringo db  "il valore che hai inserito intero e': ", 13, 10, "$"
	cifra db ?
    numero db ?
	
.code
main: 
	mov ax,@data
	mov ds,ax
	
 ;pulisco "numero":
 
    mov numero,10

 ;stampo la stringa di input:

    lea dx,stringi
    mov ah,09h
	int 21h

salta:	
 ;richiedo il valore all'utente:
	
	mov ah,01h
    int 21h
	
 ;comparo il numero con lo spazio (controllo se si va a capo):
    
    cmp al,13d
    je fine  ;salto se uguale

 ;sottraggo 48 al codice del numero (poichè in al finisce il codice del numero, non il numero in decimale, perciò lo converto in dec):
	
    sub al,48

 ;sposto il dato in decimale da al alla variabile (cif1):

    mov cifra,al    
    
 ;sposto il numero in al e procedo con la moltiplicazione:

    mov al,numero
 
 ;utilizzo bl come registro unico per la moltiplicazione; inizio prima moltiplicazione:
    
    mov bl,10  ;sposto il 10 in bl per fare la moltiplicazione con l' unità; in bl rimarrà sempre il 10
    mul bl 
    
 ;sommo cifra ad al:
    
    add al,cifra
	
 ;sposto  al in numero:

    mov numero,al

 ;salto:

    jmp salta

 ;invio a capo:
    
    mov dl,10
	mov ah,02h
	int 21h
	mov dl,13
	mov ah,02h
	int 21h

 ;stampo il contenuto della variabile numero:
    
    mov al,0 ;pulisco al (che conterrà
    mov ah,0 ;pulisco ah (che conterrà il resto),
    
    mov al,numero
    div bl
fine: ;fine programma:
   
	mov ah,4ch
	int 21
end main